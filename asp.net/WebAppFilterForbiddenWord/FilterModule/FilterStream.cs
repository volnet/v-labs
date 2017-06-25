using System.IO;
using System.Web;
using System.Text;
using System.Collections.Generic;
using System;

namespace FilterModule {
    public class FilterStream : Stream {

        private Stream _instance;
        private IList<IPageProcessor> _processors;
        private FilterContext _context;

        public FilterStream(Stream stream, IList<IPageProcessor> processors) {
            _instance = stream;
            _processors = processors;
            if (_context == null)
                _context = FilterContext.Create();
        }

        public FilterStream(Stream stream, IList<IPageProcessor> processors, FilterContext context) {
            _instance = stream;
            _processors = processors;
            _context = context;
        }

        public override void Write(byte[] buffer, int offset, int count) {
            if (HttpContext.Current.Response.ContentType == "text/html") {
                string charSet = HttpContext.Current.Response.Charset;
                System.Text.Encoding encoding = Encoding.GetEncoding(charSet);
                string currentHtml = encoding.GetString(buffer, offset, count);

                if (_processors != null) {
                    foreach (IPageProcessor processor in _processors) {
                        processor.Context = _context;
                        processor.Context.OriginalContent += currentHtml;
                        processor.Context.CurrentContent = currentHtml;

                        processor.Context.isOutputContentAvailable = false;
                        OnResponsing(processor, EventArgs.Empty);
                        processor.Context.isOutputContentAvailable = true;

                        currentHtml = processor.Context.CurrentContent
                            = processor.Process(processor.Context.CurrentContent);
                        processor.Context.CurrentContent = string.Empty;

                        processor.Context.OutputContent += currentHtml;
                    }
                }

                byte[] outputBuffer = encoding.GetBytes(currentHtml);
                _instance.Write(outputBuffer, 0, outputBuffer.Length);
            }
            else {
                _instance.Write(buffer, offset, count);
            }
        }

        public override bool CanRead {
            get {
                return true;
            }
        }

        public override bool CanSeek {
            get {
                return true;
            }
        }

        public override bool CanWrite {
            get {
                return true;
            }
        }

        public override void Flush() {
            _instance.Flush();
        }

        public override long Length {
            get {
                return _instance.Length;
            }
        }

        public override long Position {
            get {
                return _instance.Position;
            }
            set {
                _instance.Position = value;
            }
        }

        public override int Read(byte[] buffer, int offset, int count) {
            return _instance.Read(buffer, offset, count);
        }

        public override long Seek(long offset, SeekOrigin origin) {
            return _instance.Seek(offset, origin);
        }

        public override void SetLength(long value) {
            _instance.SetLength(value);
        }

        public event EventHandler Responsing;

        public void OnResponsing(object sender, EventArgs e) {
            if (Responsing != null) {
                Responsing(sender, e);
            }
        }


    }
}