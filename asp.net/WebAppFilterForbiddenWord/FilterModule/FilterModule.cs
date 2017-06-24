using System;
using System.Web;
using System.Collections.Specialized;
using System.Reflection;
using System.Collections.Generic;
using FilterModule;

namespace FilterModule {
    public class FilterModule : IHttpModule {
        /// <summary>
        /// 您将需要在您网站的 web.config 文件中配置此模块，
        /// 并向 IIS 注册此模块，然后才能使用。有关详细信息，
        /// 请参见下面的链接: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpModule Members

        FilterContext filterContext;
        IList<IPageProcessor> filters;
        ForbiddenWordFilter forbiddenWordFilter;

        public void Dispose() {
            //此处放置清除代码。
            filterContext.Dispose();
        }

        public void Init(HttpApplication context) {
            context.BeginRequest += new EventHandler(context_BeginRequest);
            context.EndRequest += new EventHandler(context_EndRequest);
        }

        void context_EndRequest(object sender, EventArgs e) {
            var app = (sender as HttpApplication);
            //if (filterContext != null) {
            //    //Save It here!
            //    //StaticPages.Write(filterContext.OutputContent);
            //}
        }

        void context_BeginRequest(object sender, EventArgs e) {
            var app = (sender as HttpApplication);

            string fullpath = app.Request.MapPath("~\\gc-response.txt");
            app.Response.WriteFile(fullpath);

            filterContext = FilterContext.Create();

            if (filters == null) {
                filters = new List<IPageProcessor>();
            }

            if (forbiddenWordFilter == null) {
                forbiddenWordFilter = new ForbiddenWordFilter();
                forbiddenWordFilter.AddForbiddenWord(new ForbiddenWordFilter.ForbiddenWord("shit", false));
                forbiddenWordFilter.AddForbiddenWord(new ForbiddenWordFilter.ForbiddenWord("fuck", false));
                forbiddenWordFilter.AddForbiddenWord(new ForbiddenWordFilter.ForbiddenWord("广告", false));

                System.Diagnostics.Debug.Assert(filters != null, "filters == null !");
                filters.Add(forbiddenWordFilter);
            }

            FilterStream filterStream = new FilterStream(
                app.Response.Filter, filters, filterContext);
            filterStream.Responsing += new EventHandler(filterStream_Responsing);
            app.Response.Filter = filterStream;
        }

        void filterStream_Responsing(object sender, EventArgs e) {
            IPageProcessor processor = sender as IPageProcessor;
            if (processor != null) {
                processor.Context.CurrentContent = processor.Context.CurrentContent.Replace("Label", "asdf");
            }
        }

        #endregion
    }
}
