<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cnBeta.aspx.cs" Inherits="WebAppFilterForbiddenWord.cnBeta" %>

<!--STATUS OK-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <style type="text/css">
        div#main
        {
            width: 950px;
            height: auto;
            text-align: left;
            word-break: break-all;
            word-wrap: break-word;
            overflow: hidden;
        }
        div#main
        {
            width: 950px;
            height: auto;
        }
        *
        {
            margin: 0px;
            padding: 0px;
        }
        #argueTopic div.title
        {
            background: #F88400 url('http://www.cnbeta.com/images/argue_title_mid.png') repeat-x;
            height: 25px;
        }
        div.title
        {
            background: #369 url(http://img.cnbeta.com/guide_mid.png) repeat-x;
            height: 24px;
        }
        div.title .midBlock
        {
            text-indent: 1em;
            font-weight: bold;
            color: #FFF;
            float: left;
        }
        div.title .midBlock
        {
            text-indent: 1em;
            font-weight: bold;
            color: #FFF;
            float: left;
        }
        div.title span
        {
            height: 25px;
            line-height: 25px;
            display: block;
        }
        div.title span
        {
            height: 24px;
            line-height: 24px;
            display: block;
        }
        div.title .rightBorder
        {
            background: #369 url('http://www.cnbeta.com/images/argue_title_right.png') no-repeat;
            width: 3px;
            float: right;
        }
        div.title .rightBorder
        {
            background: #369 url(http://img.cnbeta.com/guide_right.png) no-repeat;
            width: 3px;
            float: right;
        }
        #desc_info #desc_info_wrapper
        {
            margin-bottom: 10px;
            border: 1px solid #F90;
            border-top: 0px;
            background-color: #FFEEAD;
            width: 948px;
            _width: 950px; /* ie6 */
            line-height: 150%;
            float: left;
        }
        #desc_info span.desc
        {
            padding: 8px;
            width: 600px;
            display: block;
            overflow: hidden;
            float: left;
        }
        #desc_info div.info
        {
            margin: 8px 10px 8px 0px;
            _margin: 8px 5px 8px 0px; /* ie6 */
            padding: 5px;
            border: 1px solid #F90;
            background-color: #FFF6D5;
            width: 300px;
            _width: 300px; /* ie6 */
            float: right;
        }
        #desc_info span.info1
        {
            width: 200px;
            display: block;
            overflow: hidden;
            float: left;
        }
        #desc_info_wrapper span ul
        {
            list-style-type: none;
        }
        #desc_info_wrapper span ul li
        {
            line-height: 150%;
        }
        #desc_info span.info2
        {
            width: 100px;
            display: block;
            overflow: hidden;
            float: right;
        }
        #argueContent
        {
            clear: both;
        }
        #argueContent #obverseOpinion
        {
            margin-right: 5px;
            background-color: #F8EEEE;
            width: 310px;
            float: left;
        }
        #obverseOpinion table#obverHead
        {
            border: 1px solid #CF0000; /*background: transparent url(../images/argue_bg_obverse.png) repeat-x;*/
            width: 100%;
            height: 62px;
            text-align: left;
        }
        table td
        {
            font-size: 12px;
        }
        table#obverHead td.obverTopic
        {
            padding: 2px;
            font: bold 12px 宋体;
            color: #C00;
            text-align: left;
        }
        a:link, a:visited
        {
            color: #036;
            text-decoration: none;
        }
        #obverseOpinion dl
        {
            margin-top: 1px;
            padding: 5px 5px 0px;
            border: 1px solid #CF0000;
        }
        #posto .Content
        {
            clear: both;
            padding: 5px;
            line-height: 90%;
        }
        #posto .row
        {
            margin: 0px;
        }
        #posto label
        {
            margin: 0px 0px 0px 0px;
            font-weight: bold;
            line-height: 18px;
            color: #CF0000;
        }
        #posto .input
        {
            margin: 0;
            padding: 2px;
            width: 200px;
            border: 1px solid #CF0000;
        }
        #posto textarea
        {
            margin: 0px;
            width: 280px;
            height: 120px;
            border: 1px solid #CF0000;
        }
        #obverseOpinion .oTitle
        {
            padding: 2px;
            background: url('http://www.cnbeta.com/images/argue_opinion.gif') no-repeat left center;
            text-indent: 1em;
            font-weight: bold;
        }
        #obverseOpinion .oAuthor
        {
            padding: 0px 2px 0px;
            border-bottom: 1px solid #CF0000;
            line-height: 1.8em;
        }
        #obverseOpinion .oDetail
        {
            padding: 2px;
            line-height: 150%;
            text-align: justify;
        }
        #obverseOpinion .oOperator
        {
            margin: 0px -5px;
            padding: 2px 5px 0px; /* border-top: 1px dashed #CF0000; */
            background: url('http://www.cnbeta.com/images/argue_bg_obverse_remark.png') repeat-x;
            height: 22px;
            line-height: 22px;
            text-align: right;
        }
        .replydiv
        {
            margin: 0 auto 10px auto;
            width: 295px;
            display: none;
            border: 1px solid #aca976;
            background-color: #ffffff;
            min-height: 0px;
            height: auto;
            position: relative;
            z-index: 10000;
        }
        .feedBack
        {
            margin: 6px 0px;
            padding: 3px;
            border: 1px solid #CCC;
            min-height: 70px;
            font-size: 12px;
        }
        .feedBack .fb_title
        {
            margin: 0px 0px;
            padding: 0px 5px;
            border: 1px solid #CCC;
            background: #FFF url('http://www.cnbeta.com/images/tip.gif') no-repeat left center;
            font-weight: bold;
            text-indent: 1.5em; /* 根据tip图片的大小相应调整*/
            line-height: 20px;
        }
        .feedBack .fb_content
        {
            margin: 5px;
            line-height: 150%;
            text-align: justify;
            white-space: normal;
            word-wrap: break-word;
            word-break: break-all;
        }
        #news-bottom
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: url('http://www.cnbeta.com/images/index_108.png') repeat-x;
            height: 24px;
        }
        #news-bottom
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background: url('http://www.cnbeta.com/images/index_108.png') repeat-x;
            height: 24px;
        }
        #news-bottom-left
        {
            background: url('http://www.cnbeta.com/images/index_107.png') no-repeat left top;
            height: 24px;
        }
        #news-bottom-left
        {
            background: url('http://www.cnbeta.com/images/index_107.png') no-repeat left top;
            height: 24px;
        }
        #news-bottom-list
        {
            background: url('http://www.cnbeta.com/images/index_109.png') no-repeat right top;
            height: 24px;
            padding-top: 4px;
            padding-left: 12px;
            text-align: left;
        }
        #news-bottom-list
        {
            background: url('http://www.cnbeta.com/images/index_109.png') no-repeat right top;
            height: 24px;
            padding-top: 4px;
            padding-left: 12px;
            text-align: left;
        }
        #news-bottom-list a
        {
            padding-left: 3px;
            padding-right: 3px;
        }
        #news-bottom-list a
        {
            padding-left: 3px;
            padding-right: 3px;
        }
        #argueContent #reverseOpinion
        {
            margin-right: 5px;
            background-color: #F1F1F1;
            width: 310px;
            float: left;
        }
        #reverseOpinion table#revHead
        {
            border: 1px solid #000; /*background: transparent url(../images/argue_bg_reverse.png) repeat-x;*/
            width: 100%;
            height: 62px;
            text-align: left;
        }
        table#revHead td.revTopic
        {
            padding: 2px;
            font: bold 12px 宋体;
            color: #000;
            text-align: left;
        }
        #reverseOpinion dl
        {
            margin-top: 1px;
            padding: 5px 5px 0px;
            border: 1px solid #000;
        }
        #postr .Content
        {
            clear: both;
            padding: 5px;
            line-height: 90%;
        }
        #postr .row
        {
            margin: 0px;
        }
        #postr label
        {
            margin: 0px 0px 0px 0px;
            font-weight: bold;
            line-height: 18px;
            color: #000;
        }
        #postr .input
        {
            margin: 0;
            padding: 2px;
            width: 200px;
            border: 1px solid #000;
        }
        #postr textarea
        {
            margin: 0px;
            width: 280px;
            height: 120px;
            border: 1px solid #000;
        }
        #reverseOpinion .oTitle
        {
            padding: 2px;
            background: url('http://www.cnbeta.com/images/argue_opinion.gif') no-repeat left center;
            text-indent: 1em;
            font-weight: bold;
        }
        #reverseOpinion .oAuthor
        {
            padding: 0px 2px 0px;
            border-bottom: 1px solid #000;
            line-height: 1.8em;
        }
        #reverseOpinion .oDetail
        {
            padding: 2px;
            line-height: 150%;
            text-align: justify;
        }
        #reverseOpinion .oOperator
        {
            margin: 0px -5px;
            padding: 2px 5px 0px; /* border-top: 1px dashed #000; */
            background: url('http://www.cnbeta.com/images/argue_bg_reverse_remark.png') repeat-x;
            height: 22px;
            line-height: 22px;
            text-align: right;
        }
        #argueContent #otherOpinion
        {
            background-color: #EEF4F8;
            width: 320px;
            _width: 314px;
            float: right;
        }
        #otherOpinion #othHead
        {
            border: 1px solid #2E538D;
            background: url('http://www.cnbeta.com/images/argue_other.png') no-repeat left center;
            height: 62px;
            text-align: right;
        }
        #otherOpinion dl
        {
            margin-top: 1px;
            padding: 5px 5px 0px;
            border: 1px solid #2E538D;
        }
        #posth .Content
        {
            clear: both;
            padding: 5px;
            line-height: 90%;
        }
        #posth .row
        {
            margin: 0px;
        }
        #posth label
        {
            margin: 0px 0px 0px 0px;
            font-weight: bold;
            line-height: 18px;
            color: #2E538D;
        }
        #posth .input
        {
            margin: 0;
            padding: 2px;
            width: 200px;
            border: 1px solid #2E538D;
        }
        #posth textarea
        {
            margin: 0px;
            width: 280px;
            height: 120px;
            border: 1px solid #2E538D;
        }
        #otherOpinion .oTitle
        {
            padding: 2px;
            background: url('http://www.cnbeta.com/images/argue_opinion.gif') no-repeat left center;
            text-indent: 1em;
            font-weight: bold;
        }
        #otherOpinion .oAuthor
        {
            padding: 0px 2px 0px;
            border-bottom: 1px solid #2E538D;
            line-height: 1.8em;
        }
        #otherOpinion .oDetail
        {
            padding: 2px;
            line-height: 150%;
            text-align: justify;
        }
        #otherOpinion .oOperator
        {
            margin: 0px -5px;
            padding: 2px 5px 0px; /* border-top: 1px dashed #2E538D; */
            background: url('http://www.cnbeta.com/images/argue_bg_other_remark.png') repeat-x;
            height: 22px;
            line-height: 22px;
            text-align: right;
        }
    </style>
</head>
<body>
    <div id="main">
        <div id="argueTopic">
            <div class="title">
                <span class="midBlock">辩论主题：微软的目的能否达到？

                    <script language="javascript" type="text/javascript">                        var ReTitle = '回复:微软的目的能否达到？';</script>

                </span><span class="rightBorder"></span>
            </div>
            <div id="desc_info">
                <div id="desc_info_wrapper">
                    <span class="desc"><strong>论题描述：</strong><br />
                        <span style="font-weight: bold">大家好，久违的辩论台又和你们见面了！fuck一下!</span>干你娘的，既然讨论时下热点话题是辩论台一直以来的传统，那么这一期我们就不得不提到微软的“黑屏行动”。<br />
                        不可否认，微软这一波的反盗版行动的确激起了千层浪，一时间闹得满城风雨，CB的版面也被各种截然不同的声音所占据。众所周知，今年以来微软对盗版态度的突然变得非常强硬，刚刚一举拿下了为患多年的“番茄版XP”，如今又要再次扩大打击面。对于这一现象，很多人提出了自己的看法，有人甚至认为其背后是一场“阴谋”，猜测微软是别有所图。之前我在cnBeta发起了一个投票，让CBer们来揣测微软“黑屏行动”的动机。<span
                            style="font-weight: bold">投票的结果似乎也反映了这一点，只有少部分朋友认为微软就是在单纯的维权和反盗版，更多人猜想微软意在变相推广Vista。</span><br />
                        <span style="font-weight: bold">不管微软的行为是为了某种单纯的目的也好，还是综合了多个方面考量而做出的决定。各位睿智的访客们，您认为微软的目的达到了吗？或者说能达到吗？</span></span>
                    <div class="info">
                        <span class="info1">
                            <ul>
                                <li>发 起 人：Aoouch </li>
                                <li>开始时间：2008-10-21 08:40:32 </li>
                                <li>结束时间：2008-10-25 00:34:00 </li>
                                <li>倒 计 时：

                                    已结束 </li>
                            </ul>
                        </span><span class="info2">
                            <ul>
                                <li>人气：

                                    <script src="http://www.cnbeta.com/counter.php?sid=67605"></script>

                                    9976 </li>
                                <li>战况：反方获胜 </li>
                            </ul>
                        </span>
                    </div>
                    <!-- end info -->
                </div>
                <!-- end desc_info_wrapper -->
            </div>
            <!-- end desc_info -->
        </div>
        <!-- end argue topic -->
        <div id="argueContent">
            <div id="obverseOpinion">
                <table id="obverHead" cellpadding="0" cellspacing="0">
                    <tr>
                        <td rowspan="2" valign="top">
                            <img align="top" alt="" height="62" src="http://www.cnbeta.com/images/argue_obverse.png"
                                width="76" />
                        </td>
                        <td class="obverTopic" colspan="2">
                            主观点：绝对能！这一招对付普通用户肯定很有效。
                        </td>
                    </tr>
                    <tr>
                        <td>
                            观点数：103 得票：<span id="vote1">234</span>
                        </td>
                        <td>
                            <a href="javascript:Votesu('67605',1);" style="font-size: 14px; font-weight: bold">我支持</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id="status1">
                            </div>
                            <div id="stat1">
                            </div>
                        </td>
                    </tr>
                </table>
                <div id="posto">
                    <dl>
                        <div class="Content">
                            <div class="row">
                                <label>
                                    评论主题:</label><input id="subject1" class="input" name="nowsubject1" size="20" type="text"
                                        value="Re:微软的目的能否达到？" /></div>
                            <div class="row">
                                <label>
                                    您的大名:</label><input id="name1" class="input" name="nowname1" size="20" type="text" /><input
                                        id="type1" name="nowtype" type="hidden" value="1" /></div>
                            <div class="row">
                                <label>
                                    您的主页:</label><input id="page1" class="input" name="nowpage1" size="20" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的邮箱:</label><input id="email1" class="input" name="nowemail1" size="20" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的评论:</label><textarea id="comment1" cols="20" name="comment1" onfocus="_Showvaldiv(1);"
                                        rows="1"></textarea></div>
                            <div id="valdiv1" class="row" style="display: none">
                                <label>
                                    验证码:</label><input id="valimg1" class="input" name="valimg1" size="20" style="width: 40px"
                                        type="text" /><img id="safecode1" align="absBottom" alt="更换一张验证码图片" border="0" name="safecode"
                                            onclick="reloadcode(1);" src="" />
                                [<a href="javascript:reloadcode(1);">刷新验证码</a>]</div>
                            <div id="AxajTip1" class="AxajTip">
                            </div>
                            <span class="row" style="text-align: center">
                                <input align="top" name="image" onclick="_postReply(1,67605,1)" src="http://www.cnbeta.com/images/argue_btn_obverse.png"
                                    type="image" />
                            </span>
                            <div id="AxajTip21">
                            </div>
                            <div id="AxajTip31">
                            </div>
                        </div>
                    </dl>
                </div>
                <div id="textloading1" style="line-height: 100%; background-color: #ff0000; display: none;
                    float: left; height: 10px; color: white">
                </div>
                <div id="replyo">
                    <dl>
                        <dt class="oTitle">正方1辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:42:39
                        </dd>
                        <dd class="oDetail">
                            能,只要在媒体上多炒炒,一群对WGA是什么都不知道的人就会去买正版,单位用户和领导们更是屁颠屁颠,又可以...
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974396,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974396">127</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974396,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974396);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974396">
                            </div>
                            <div id="Reply1974396" class="replydiv">
                            </div>
                            <div id="AxajTip21974396">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方2辩：hsbin888 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:21:58
                        </dd>
                        <dd class="oDetail">
                            能，从前几个星期就放出这个消息开始，已经把中国的网络，甚至整个中国的所有的电脑用户都震动了。大家都人心惶惶，已经达到了他宣传正版的目的，微软自己都没指望能把中国所有的盗版用户都变成正版用户。他所要做的只是对正版的宣传，而且让中国知道正版的好处。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975223,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975223">38</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975223,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975223);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975223">
                            </div>
                            <div id="Reply1975223" class="replydiv">
                            </div>
                            <div id="AxajTip21975223">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方3辩：ocean </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:36:48
                        </dd>
                        <dd class="oDetail">
                            能,毕竟只要你用MS系统,MS就有办法整到你,除非你别用MS的系统.觉得国人一些行为真的很可悲,用盗版的还理直气壮说MS流氓行为,真实太可笑了.MS已经很仁义了，只是黑了墙纸,其实狠一点完全可以通过后门直接封掉你的D版系统.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974867,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974867">22</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974867,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974867);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974867">
                            </div>
                            <div id="Reply1974867" class="replydiv">
                            </div>
                            <div id="AxajTip21974867">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方4辩：Rj </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:02:10
                        </dd>
                        <dd class="oDetail">
                            中国的2.21亿网民已为世界之首，比日本、韩国、欧洲各国更具发展潜力，在台湾就算2300万人全用正版，中国只需要有三成人使用正版就已经是台湾的3倍，而且中国用户对win的依赖很深，看FX未及2％占有率就知道了，更不用说去用全球未及1％的LINUX...所以微软现在“这一招对付普通用户（对此有经济能力的）肯定很有效”。。。认为无效的自可漂去投“反方”，我相信投“正方”的大多也有反方观点，因为喜欢讨论这些问题的不会全是2.21亿网民。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975520,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975520">17</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975520,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975520);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975520">
                            </div>
                            <div id="Reply1975520" class="replydiv">
                            </div>
                            <div id="AxajTip21975520">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方5辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:27:36
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    能,只要在媒体上多炒炒,一群对WGA是什么都不知道的人就会去买正版,单位用户和领导们更是屁颠屁颠,又可以...</div>
                            </fieldset>
                            说的对，有钱人怕麻烦自然会去买，啥都不懂的根本就不知道打补丁这回事，他们不知道自己在裸奔，自然也就不会想着去买衣服穿。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974776,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974776">12</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974776,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974776);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974776">
                            </div>
                            <div id="Reply1974776" class="replydiv">
                            </div>
                            <div id="AxajTip21974776">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方6辩：微软不傻 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:04:33
                        </dd>
                        <dd class="oDetail">
                            微软不会傻到去做得罪13亿中国人的事情，这么做肯定有原因。我的理解是：<br />
                            <br />
                            1、不管结果怎么样，由于这件事而购买正版的人数肯定会增加，正版比例会慢慢扩大。<br />
                            <br />
                            2、如果现在还不培养中国人对正版的意识，那么以后微软的产品就不能“正版化”。<br />
                            <br />
                            3、定价和不合理不重要，重要的是你有需求，就像房子一样，普通工薪阶层你一样买不起。 这件事不是要说明微软有多么“烂”，而是要反思我们的软件道路还很艰难。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975539,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975539">10</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975539,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975539);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975539">
                            </div>
                            <div id="Reply1975539" class="replydiv">
                            </div>
                            <div id="AxajTip21975539">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方7辩：hilw </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:38:03
                        </dd>
                        <dd class="oDetail">
                            这就好比科学家告诉大家.说有个彗星要撞地球了.不过问题不大.所以大家都不以为然.<br />
                            <br />
                            结果过了段时间科学家又说.彗星威力很大.但只能波及到地球部分地区.还告诉大家一些避难办法.大家惊慌失措.<br />
                            <br />
                            结果过了很久后.科学家说.彗星威力已经达到毁灭地球的程度.大家.....<br />
                            <br />
                            你不管人家目的能不能达到.总之.继续盗版下去一定是有说法的出来混.迟早是要还的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974878,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974878">10</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974878,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974878);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974878">
                            </div>
                            <div id="Reply1974878" class="replydiv">
                            </div>
                            <div id="AxajTip21974878">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方8辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:11:08
                        </dd>
                        <dd class="oDetail">
                            对普通用户绝对会有胁迫作用，担心系统数据丢失，因此会积极考虑购正版软件的，可以达到微软的目的的。不过现在只见到微软对Office进行验正，未发布操作系统验正。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974642,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974642">8</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974642,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974642);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974642">
                            </div>
                            <div id="Reply1974642" class="replydiv">
                            </div>
                            <div id="AxajTip21974642">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方9辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:47:06
                        </dd>
                        <dd class="oDetail">
                            打广告的目的达到了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974422,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974422">8</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974422,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974422);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974422">
                            </div>
                            <div id="Reply1974422" class="replydiv">
                            </div>
                            <div id="AxajTip21974422">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方10辩：Null </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:27:16
                        </dd>
                        <dd class="oDetail">
                            让更多的人知道了，操作系统并不是免费的,也是需要购买的。<br />
                            软件的售价并不只是光盘和包装的工本费，更大的价值在于前期开发的投入。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974772,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974772">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974772,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974772);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974772">
                            </div>
                            <div id="Reply1974772" class="replydiv">
                            </div>
                            <div id="AxajTip21974772">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方11辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:09:29
                        </dd>
                        <dd class="oDetail">
                            根据中国网民的普遍素质<br />
                            <br />
                            微软此举肯定很有效果
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974626,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974626">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974626,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974626);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974626">
                            </div>
                            <div id="Reply1974626" class="replydiv">
                            </div>
                            <div id="AxajTip21974626">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方12辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:48:47
                        </dd>
                        <dd class="oDetail">
                            普通用户很多，他们不知道自动更新如何关闭，很简单的事情对他们来说可能很难，所以有些人很害怕被黑，所以回去买正版，但是买正版只是一段时间。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974428,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974428">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974428,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974428);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974428">
                            </div>
                            <div id="Reply1974428" class="replydiv">
                            </div>
                            <div id="AxajTip21974428">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方13辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:45:13
                        </dd>
                        <dd class="oDetail">
                            他就是要告诉所有人：怎么样，我的系统我想怎么招都行。你们没钱的就别想用。<br />
                            <br />
                            <br />
                            <br />
                            来告我啊。我就玩垄断，我就专横，可是怎么样，谁叫你们没钱!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974408,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974408">6</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974408,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974408);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974408">
                            </div>
                            <div id="Reply1974408" class="replydiv">
                            </div>
                            <div id="AxajTip21974408">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方14辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:36:45
                        </dd>
                        <dd class="oDetail">
                            能，小白而且有钱的数量只要有1％，微软都是赢家。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974866,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974866">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974866,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974866);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974866">
                            </div>
                            <div id="Reply1974866" class="replydiv">
                            </div>
                            <div id="AxajTip21974866">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方15辩：齐颂 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:32:31
                        </dd>
                        <dd class="oDetail">
                            说句玩笑话，winXP如果出了超豪华特典我还真想收一套纪念。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974828,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974828">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974828,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974828);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974828">
                            </div>
                            <div id="Reply1974828" class="replydiv">
                            </div>
                            <div id="AxajTip21974828">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方16辩：澄崽仔 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:01:09
                        </dd>
                        <dd class="oDetail">
                            此次针对XP的正版认证，目的不在“围剿”盗版，而是微软的一种引导策略，关键是将对使用XP用户投放种种限制及骚扰，达到它对未来产品趋势的计划目的，大家都知道，XP的淘汰已经被微软提上日程，接踵而至的各类新型技术，及新一代操作系统，不管是VISTA跟即将到来的Win7，都代表着一个新的技术时代来临，升级更新淘汰是趋势。<br />
                            <br />
                            <br />
                            <br />
                            如果你可以说，微软不给你用XP，你就不用WIN系列操作系统；或者你能忍受这种不间断的骚扰，那微软的目的才会失败。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975513,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975513">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975513,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975513);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975513">
                            </div>
                            <div id="Reply1975513" class="replydiv">
                            </div>
                            <div id="AxajTip21975513">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方17辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:30:37
                        </dd>
                        <dd class="oDetail">
                            中国人要用最坏的恶意去揣测他都不为过。去人家家里偷东西，主人在门上贴个告示你们这群小偷就要抗议，天理何在，王法何在
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974805,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974805">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974805,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974805);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974805">
                            </div>
                            <div id="Reply1974805" class="replydiv">
                            </div>
                            <div id="AxajTip21974805">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方18辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:35
                        </dd>
                        <dd class="oDetail">
                            动静闹那么大<br />
                            <br />
                            但是上CB的90％还是不会买正版<br />
                            <br />
                            不过只要有50％的不上CB的买了正版<br />
                            <br />
                            他们就赚翻了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974447,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974447">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974447,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974447);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974447">
                            </div>
                            <div id="Reply1974447" class="replydiv">
                            </div>
                            <div id="AxajTip21974447">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方19辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 17:29:40
                        </dd>
                        <dd class="oDetail">
                            不知道能不能达到，反正我今天买了套正版vista，不是因为黑屏，是以为我觉得应该支持正版了，让中国的盗版率能降一点是一点
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977572,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977572">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977572,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977572);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977572">
                            </div>
                            <div id="Reply1977572" class="replydiv">
                            </div>
                            <div id="AxajTip21977572">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方20辩：alzn </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 14:11:43
                        </dd>
                        <dd class="oDetail">
                            已经有消息表明咨询正版操作系统和购买量在上涨。这下说明微软的初步目的已经达到。这不是微软第一次大批量投放WGA，却是声势最大的一次。连我周围平常并不怎么关注电脑的“叔叔级”人物都知道了，毕竟不是所有人都知道可以通过关闭自动更新或者有选择性的安装来拒绝安装WGA的。单从微软的目的有没有达到来思考，确实应该说达到了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976678,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976678">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976678,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976678);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976678">
                            </div>
                            <div id="Reply1976678" class="replydiv">
                            </div>
                            <div id="AxajTip21976678">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方21辩：ZDX </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:12:37
                        </dd>
                        <dd class="oDetail">
                            很多不关心IT业的人都知道微软这次黑屏行动，可见还是有一定的影响的，尤其对那些计算机知识不是很了解的人。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975155,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975155">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975155,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975155);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975155">
                            </div>
                            <div id="Reply1975155" class="replydiv">
                            </div>
                            <div id="AxajTip21975155">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方22辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:47:13
                        </dd>
                        <dd class="oDetail">
                            windows已经垄断了普通用户，所以不管微软做什么，都有效，只要他合法
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974949,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974949">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974949,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974949);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974949">
                            </div>
                            <div id="Reply1974949" class="replydiv">
                            </div>
                            <div id="AxajTip21974949">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方23辩：被和谐者 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:37:11
                        </dd>
                        <dd class="oDetail">
                            当然能，咱舍得三五百去装瑞星，自然不在乎再花三五百去搞个正版微软，以前不装，那是因为街上5块买的就能用，可别低估咱的在智伤。<br />
                            <br />
                            同胞们，支持俺，顶。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974872,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974872">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974872,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974872);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974872">
                            </div>
                            <div id="Reply1974872" class="replydiv">
                            </div>
                            <div id="AxajTip21974872">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方24辩：莫名其妙 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:28:40
                        </dd>
                        <dd class="oDetail">
                            能达到效果，呵呵，如果配合199元的正版效果更好
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974787,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974787">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974787,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974787);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974787">
                            </div>
                            <div id="Reply1974787" class="replydiv">
                            </div>
                            <div id="AxajTip21974787">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方25辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:14:23
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    不是可以选择不装么？这只是给装了正版的人的安慰，花那么多钱， 总要有点说法吧!
                                </div>
                            </fieldset>
                            你觉得普通用户会去仔细读么？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974670,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974670">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974670,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974670);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974670">
                            </div>
                            <div id="Reply1974670" class="replydiv">
                            </div>
                            <div id="AxajTip21974670">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方26辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:13:37
                        </dd>
                        <dd class="oDetail">
                            【欢迎使用windows XP永久免费版，现在为您播放的是windows视窗桌面广告（此广告每60分钟更新一次，现正接受时段预定）】——如果微软每天在你桌面上上演广告秀，我想高级用户也会忍受不了——你用盗版，我控制你桌面。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974666,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974666">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974666,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974666);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974666">
                            </div>
                            <div id="Reply1974666" class="replydiv">
                            </div>
                            <div id="AxajTip21974666">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方27辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:49:14
                        </dd>
                        <dd class="oDetail">
                            应该是可以的，中国的媒体报道力是惊人的，死人都能说成活人，只能怪天朝啦。微软这次肯定是经过多年的调查才做出这样的决策!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974434,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974434">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974434,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974434);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974434">
                            </div>
                            <div id="Reply1974434" class="replydiv">
                            </div>
                            <div id="AxajTip21974434">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方28辩：ware0x54 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:45:59
                        </dd>
                        <dd class="oDetail">
                            我自愿加入共青团员,我不用盗版
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974412,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974412">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974412,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974412);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974412">
                            </div>
                            <div id="Reply1974412" class="replydiv">
                            </div>
                            <div id="AxajTip21974412">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方29辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:01:56
                        </dd>
                        <dd class="oDetail">
                            现在中国的小白还是很多的 因此MS的手段还是比较有效的。<br />
                            <br />
                            等到什么时候Google的使用率（或其他搜索引擎）超百度，IE7的使用率超过IE6<br />
                            <br />
                            ，cnbeta替代新浪、网易成为不少人的首页<br />
                            <br />
                            腾讯破产，暴风影音陷入了用户隐私权的诉讼，XX音乐盒，Y狗音乐、逊雷等小白专用软件都收到了法院传票那时MS再用这招就不能奏效了为什么？因为那时天朝人人都用LINUX/BSD了
                            也没有MS什么事了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978289,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978289">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978289,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978289);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978289">
                            </div>
                            <div id="Reply1978289" class="replydiv">
                            </div>
                            <div id="AxajTip21978289">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方30辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:59:56
                        </dd>
                        <dd class="oDetail">
                            20:59分上海正常<br />
                            <br />
                            “系统运行正常! ”
                            <br />
                            <br />
                            “跟踪正常! ”
                            <br />
                            <br />
                            “遥测信号正常! ” 操作系统感觉良好! 向祖国人民问好!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978280,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978280">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978280,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978280);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978280">
                            </div>
                            <div id="Reply1978280" class="replydiv">
                            </div>
                            <div id="AxajTip21978280">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方31辩：项空月 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:51:13
                        </dd>
                        <dd class="oDetail">
                            所谓的超过8成网民反对这一举措<br />
                            <br />
                            这从侧面说出几个事实：<br />
                            1、大多数中国人，尤其是个人用户，用的都是盗版windows.（事实上有些企业或大学也在用盗版） 2、个人用户的平均消费水平还没达到随便购买一套正版windows或office的地步。
                            3、微软要推广正版，就必须将中国地区的价格降低。 4、8成的人不要脸。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976244,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976244">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976244,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976244);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976244">
                            </div>
                            <div id="Reply1976244" class="replydiv">
                            </div>
                            <div id="AxajTip21976244">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方32辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:01:38
                        </dd>
                        <dd class="oDetail">
                            能 微软的目的就是宣传<br />
                            <br />
                            <br />
                            <br />
                            这几天cb都快被“黑屏”刷屏了~~
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975940,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975940">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975940,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975940);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975940">
                            </div>
                            <div id="Reply1975940" class="replydiv">
                            </div>
                            <div id="AxajTip21975940">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方33辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:31:59
                        </dd>
                        <dd class="oDetail">
                            不管这次行动有没有让正版销售大涨，另一个方面，正版的推广却是很有帮助，这是一个很大的宣传活动。我支持微软
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975758,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975758">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975758,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975758);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975758">
                            </div>
                            <div id="Reply1975758" class="replydiv">
                            </div>
                            <div id="AxajTip21975758">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方34辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:00:49
                        </dd>
                        <dd class="oDetail">
                            能 我们单位以及准备买正版office了，xp是ome的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975508,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975508">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975508,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975508);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975508">
                            </div>
                            <div id="Reply1975508" class="replydiv">
                            </div>
                            <div id="AxajTip21975508">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方35辩：jack </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:40:26
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    如果50元一套我会考虑，但是现在太贵了。</div>
                            </fieldset>
                            正版杀毒软件多少？现在正版系统又不贵
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975365,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975365">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975365,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975365);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975365">
                            </div>
                            <div id="Reply1975365" class="replydiv">
                            </div>
                            <div id="AxajTip21975365">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方36辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:34:02
                        </dd>
                        <dd class="oDetail">
                            关键是微软真正的目的是什么？其实这场封闭最重要的不是说有多少人真的去买正版，而是创造了一个平台让大家去正视盗版。不过副产品就是提供了一个舞台，让国人好好的表演了一下。从这个角度来看，微软的目的是达到了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975309,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975309">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975309,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975309);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975309">
                            </div>
                            <div id="Reply1975309" class="replydiv">
                            </div>
                            <div id="AxajTip21975309">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方37辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:20:44
                        </dd>
                        <dd class="oDetail">
                            达到了，大家纷纷转向D版Vista
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975216,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975216">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975216,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975216);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975216">
                            </div>
                            <div id="Reply1975216" class="replydiv">
                            </div>
                            <div id="AxajTip21975216">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方38辩：idxiaowu </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:58:18
                        </dd>
                        <dd class="oDetail">
                            当我们不断讨论这个问题时，微软的目的已经达到了!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975035,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975035">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975035,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975035);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975035">
                            </div>
                            <div id="Reply1975035" class="replydiv">
                            </div>
                            <div id="AxajTip21975035">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方39辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:53:58
                        </dd>
                        <dd class="oDetail">
                            因为cber不是普通用户
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975007,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975007">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975007,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975007);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975007">
                            </div>
                            <div id="Reply1975007" class="replydiv">
                            </div>
                            <div id="AxajTip21975007">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方40辩：Yonsm </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:39:19
                        </dd>
                        <dd class="oDetail">
                            当然能，破解比较难的话，至少可以促使一部分人去买正版。当然，此时如果挥舞价格大棒，效果更佳。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974886,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974886">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974886,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974886);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974886">
                            </div>
                            <div id="Reply1974886" class="replydiv">
                            </div>
                            <div id="AxajTip21974886">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方41辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:38:28
                        </dd>
                        <dd class="oDetail">
                            就算现在仍不用正版，但人们的正版意识肯定会加强。随时间推移，会有越来越多的人用正版。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974882,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974882">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974882,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974882);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974882">
                            </div>
                            <div id="Reply1974882" class="replydiv">
                            </div>
                            <div id="AxajTip21974882">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方42辩：Jiayi </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:27:50
                        </dd>
                        <dd class="oDetail">
                            至少能让国人知道软件是有价值的，偷东西迟早是要还的。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974782,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974782">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974782,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974782);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974782">
                            </div>
                            <div id="Reply1974782" class="replydiv">
                            </div>
                            <div id="AxajTip21974782">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方43辩：莫名其妙 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:25:47
                        </dd>
                        <dd class="oDetail">
                            能达到效果，如果能配合150元左右的正版促销，效果更好
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974758,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974758">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974758,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974758);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974758">
                            </div>
                            <div id="Reply1974758" class="replydiv">
                            </div>
                            <div id="AxajTip21974758">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方44辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:23:39
                        </dd>
                        <dd class="oDetail">
                            可以，微软的目的只是教育，并不在乎能卖出多少的系统，他不缺那点钱。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974740,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974740">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974740,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974740);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974740">
                            </div>
                            <div id="Reply1974740" class="replydiv">
                            </div>
                            <div id="AxajTip21974740">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方45辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:19:14
                        </dd>
                        <dd class="oDetail">
                            加强大家的正版观念!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974708,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974708">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974708,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974708);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974708">
                            </div>
                            <div id="Reply1974708" class="replydiv">
                            </div>
                            <div id="AxajTip21974708">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方46辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:14:30
                        </dd>
                        <dd class="oDetail">
                            会有一部高层人改用正版，身边有许多
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974672,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974672">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974672,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974672);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974672">
                            </div>
                            <div id="Reply1974672" class="replydiv">
                            </div>
                            <div id="AxajTip21974672">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方47辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:13:17
                        </dd>
                        <dd class="oDetail">
                            绝大多数用户是电脑盲，因此会被吓倒!
                            <br />
                            如果专业软件，如Auotdesk，我看未必。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974663,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974663">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974663,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974663);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974663">
                            </div>
                            <div id="Reply1974663" class="replydiv">
                            </div>
                            <div id="AxajTip21974663">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方48辩：wonsore </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:11:38
                        </dd>
                        <dd class="oDetail">
                            微软的目的并不在于促进一时的正版销量，而在乎强化客户对正版和盗版的认识。可以说教育意义大于一时的商业意义。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974646,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974646">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974646,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974646);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974646">
                            </div>
                            <div id="Reply1974646" class="replydiv">
                            </div>
                            <div id="AxajTip21974646">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方49辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:10:25
                        </dd>
                        <dd class="oDetail">
                            微软的目的达到的了，他只是表达了一个姿态，至于要达到多少销售量估计他们自己都不抱希望。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974637,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974637">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974637,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974637);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974637">
                            </div>
                            <div id="Reply1974637" class="replydiv">
                            </div>
                            <div id="AxajTip21974637">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方50辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:10:09
                        </dd>
                        <dd class="oDetail">
                            这边人少，我过来凑热闹~
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974632,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974632">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974632,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974632);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974632">
                            </div>
                            <div id="Reply1974632" class="replydiv">
                            </div>
                            <div id="AxajTip21974632">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方51辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:06:09
                        </dd>
                        <dd class="oDetail">
                            估计40岁以上的普通用户，如果不是很懂电脑的人都会去买正版的吧
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974585,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974585">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974585,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974585);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974585">
                            </div>
                            <div id="Reply1974585" class="replydiv">
                            </div>
                            <div id="AxajTip21974585">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方52辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:04:27
                        </dd>
                        <dd class="oDetail">
                            微软这一招打击盗版绝对不是目的。意在让，让中国人觉醒还有正版这种东西.我觉得微软的目的已经达到了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974564,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974564">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974564,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974564);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974564">
                            </div>
                            <div id="Reply1974564" class="replydiv">
                            </div>
                            <div id="AxajTip21974564">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方53辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:40
                        </dd>
                        <dd class="oDetail">
                            能 肯定能
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974448,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974448">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974448,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974448);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974448">
                            </div>
                            <div id="Reply1974448" class="replydiv">
                            </div>
                            <div id="AxajTip21974448">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方54辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:48:48
                        </dd>
                        <dd class="oDetail">
                            有点作用，但不大。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974429,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974429">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974429,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974429);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974429">
                            </div>
                            <div id="Reply1974429" class="replydiv">
                            </div>
                            <div id="AxajTip21974429">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方55辩：SM </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:46:49
                        </dd>
                        <dd class="oDetail">
                            我先去做运动，看MS能有多黑
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974420,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974420">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974420,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974420);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974420">
                            </div>
                            <div id="Reply1974420" class="replydiv">
                            </div>
                            <div id="AxajTip21974420">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方56辩：cy </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:46:29
                        </dd>
                        <dd class="oDetail">
                            one word ..... 能!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974418,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974418">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974418,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974418);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974418">
                            </div>
                            <div id="Reply1974418" class="replydiv">
                            </div>
                            <div id="AxajTip21974418">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方57辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:43:34
                        </dd>
                        <dd class="oDetail">
                            我是打酱油的管我什么事<br />
                            <br />
                            不行的话重装
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974400,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974400">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974400,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974400);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974400">
                            </div>
                            <div id="Reply1974400" class="replydiv">
                            </div>
                            <div id="AxajTip21974400">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方58辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:42:59
                        </dd>
                        <dd class="oDetail">
                            能 肯定能<br />
                            <br />
                            用他的技术手段
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974397,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974397">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974397,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974397);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974397">
                            </div>
                            <div id="Reply1974397" class="replydiv">
                            </div>
                            <div id="AxajTip21974397">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方59辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 22:10:29
                        </dd>
                        <dd class="oDetail">
                            要求用正版无可厚非<br />
                            但做法有点让人怀疑
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1982662,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1982662">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1982662,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1982662);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31982662">
                            </div>
                            <div id="Reply1982662" class="replydiv">
                            </div>
                            <div id="AxajTip21982662">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方60辩：tozxx </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 14:23:28
                        </dd>
                        <dd class="oDetail">
                            今天我的电脑黑屏了<br />
                            <br />
                            仔细一查，是显示器线松了<br />
                            <br />
                            后来我还发现了，别人的盗版的都一小时黑一次屏，然后大家就能休息一下眼睛，活动活动身体，我感觉微软的设计真的非常人性化，所以我就把自己用的正版卸载了，换盗版的了<br />
                            <br />
                            太人性化了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1981087,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1981087">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1981087,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1981087);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31981087">
                            </div>
                            <div id="Reply1981087" class="replydiv">
                            </div>
                            <div id="AxajTip21981087">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方61辩：11 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:37:03
                        </dd>
                        <dd class="oDetail">
                            111
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979220,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979220">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979220,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979220);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979220">
                            </div>
                            <div id="Reply1979220" class="replydiv">
                            </div>
                            <div id="AxajTip21979220">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方62辩：zhazhaniu </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 01:51:39
                        </dd>
                        <dd class="oDetail">
                            微软的目的不在于反盗版，它自己也知道这个可选的补丁无法撼动根深蒂固的盗版市场。<br />
                            微软的此举是为了引起一片“用盗版就小点声”等为正版说话的人，简单来讲，就是普及一个正版的概念，用人们的言论去撼动盗版而不是用技术。<br />
                            这招可谓高明至极，一方面宣传了盗版，一方面其实让自己企业的形象得到了提高。那么多天以来，其实有不少的人从反对打击盗版，到了“盗版自己偷偷用”的境界，这对盗版才是切切实实的打击。比起种种技术、法律等打击手段都来得有效!
                            <br />
                            ps：我是支持正版的～我也在用正版vista～还有盗版xp～偷偷用～哈哈～
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978853,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978853">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978853,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978853);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978853">
                            </div>
                            <div id="Reply1978853" class="replydiv">
                            </div>
                            <div id="AxajTip21978853">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方63辩：Nox </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 00:00:06
                        </dd>
                        <dd class="oDetail">
                            当然可以办法，这么大的公司连这点都做不到的话，还不如趁早倒闭!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978731,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978731">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978731,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978731);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978731">
                            </div>
                            <div id="Reply1978731" class="replydiv">
                            </div>
                            <div id="AxajTip21978731">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方64辩：航空媒体 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:53:57
                        </dd>
                        <dd class="oDetail">
                            绝对有效，网民是有层次的，盗版用户一样是有层次的。这次黑屏对于低端盗版用户，那简直是灭顶之灾，譬如XP系统中开着在线升级的那些，恭喜你们!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978722,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978722">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978722,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978722);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978722">
                            </div>
                            <div id="Reply1978722" class="replydiv">
                            </div>
                            <div id="AxajTip21978722">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方65辩：godtan </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:48:32
                        </dd>
                        <dd class="oDetail">
                            其实我一直以为无所谓，反正有破解。<br />
                            <br />
                            但是经过给好多朋友装机时的了解，才发现，那些非IT行业，甚至说，非技术人员，很多人根本不知道还有别的办法能对付微软的这一招，除了去安装正版……对我们技术人员而言，真的不可思议，但这是事实。真的很有效……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978566,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978566">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978566,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978566);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978566">
                            </div>
                            <div id="Reply1978566" class="replydiv">
                            </div>
                            <div id="AxajTip21978566">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方66辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:42:45
                        </dd>
                        <dd class="oDetail">
                            我支持
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978227,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978227">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978227,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978227);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978227">
                            </div>
                            <div id="Reply1978227" class="replydiv">
                            </div>
                            <div id="AxajTip21978227">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方67辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:50:26
                        </dd>
                        <dd class="oDetail">
                            只要之后MS所有补丁都附带这个feature，一定很多人受不了的。<br />
                            <br />
                            要不就永不更新，但是大家都知道那意味着什么。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978076,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978076">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978076,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978076);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978076">
                            </div>
                            <div id="Reply1978076" class="replydiv">
                            </div>
                            <div id="AxajTip21978076">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方68辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:48:48
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    <fieldset class="feedBack">
                                        <legend class="fb_title">引用jackying的评论:</legend>
                                        <div class="fb_content">
                                            中国人，喜欢 免费使用正版软件。</div>
                                    </fieldset>
                                    你没有付费怎么能说使用的是正版软件呢</div>
                            </fieldset>
                            付费了。我花五块买的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978071,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978071">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978071,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978071);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978071">
                            </div>
                            <div id="Reply1978071" class="replydiv">
                            </div>
                            <div id="AxajTip21978071">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方69辩：ｎｏｗｗ </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:07:17
                        </dd>
                        <dd class="oDetail">
                            可能，除非中国人都买正版……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977925,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977925">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977925,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977925);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977925">
                            </div>
                            <div id="Reply1977925" class="replydiv">
                            </div>
                            <div id="AxajTip21977925">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方70辩：自由蓝维 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:26:42
                        </dd>
                        <dd class="oDetail">
                            目的达到了,起码宣传正版的目的达到了,这比在CCTV上几千万的VISTA推广广告,来的强!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977806,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977806">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977806,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977806);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977806">
                            </div>
                            <div id="Reply1977806" class="replydiv">
                            </div>
                            <div id="AxajTip21977806">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方71辩：夏夜晨星 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 17:55:32
                        </dd>
                        <dd class="oDetail">
                            只能说：这是条好计策! ! !
                            <br />
                            <br />
                            不知是谁想出来的很强
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977687,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977687">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977687,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977687);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977687">
                            </div>
                            <div id="Reply1977687" class="replydiv">
                            </div>
                            <div id="AxajTip21977687">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方72辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:13:16
                        </dd>
                        <dd class="oDetail">
                            大部分人是不太懂电脑的，甚至装系统都是花50元钱请人装的，他们比较会购买正版，安全第一。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977188,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977188">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977188,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977188);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977188">
                            </div>
                            <div id="Reply1977188" class="replydiv">
                            </div>
                            <div id="AxajTip21977188">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方73辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:37:03
                        </dd>
                        <dd class="oDetail">
                            反正我很多不懂的朋友都来问我自己的电脑会不会黑屏。总之微软这招是收效了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977033,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977033">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977033,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977033);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977033">
                            </div>
                            <div id="Reply1977033" class="replydiv">
                            </div>
                            <div id="AxajTip21977033">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方74辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:13:24
                        </dd>
                        <dd class="oDetail">
                            感谢微软，终于找到挪用公款的理由了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976949,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976949">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976949,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976949);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976949">
                            </div>
                            <div id="Reply1976949" class="replydiv">
                            </div>
                            <div id="AxajTip21976949">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方75辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 14:24:21
                        </dd>
                        <dd class="oDetail">
                            有的啊，没看新闻啊，买正版的公司和个人都挤迫大门了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976745,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976745">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976745,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976745);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976745">
                            </div>
                            <div id="Reply1976745" class="replydiv">
                            </div>
                            <div id="AxajTip21976745">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方76辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:27:39
                        </dd>
                        <dd class="oDetail">
                            知道可以不装这个更新的用户占5％，能够装了后又卸了的占1％。就凭这个判断使用者IQ。.很容易就被ms骗到。。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976436,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976436">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976436,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976436);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976436">
                            </div>
                            <div id="Reply1976436" class="replydiv">
                            </div>
                            <div id="AxajTip21976436">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方77辩：dj </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:18:07
                        </dd>
                        <dd class="oDetail">
                            能的吧。你用盗版还有什么好说？理在哪边？我想三岁小朋友也明白啦。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976391,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976391">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976391,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976391);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976391">
                            </div>
                            <div id="Reply1976391" class="replydiv">
                            </div>
                            <div id="AxajTip21976391">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方78辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:12:42
                        </dd>
                        <dd class="oDetail">
                            能! 至少可以增强要脸的人正版意识! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976366,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976366">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976366,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976366);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976366">
                            </div>
                            <div id="Reply1976366" class="replydiv">
                            </div>
                            <div id="AxajTip21976366">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方79辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:08:39
                        </dd>
                        <dd class="oDetail">
                            我个人觉得，此次微软的目的是“强行戒奶”，大家对XP的感情太好，依赖性太大；不利于他的新系统推广与应用。公司是靠盈利为目的，东西卖不出去，还谈何盈利
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976338,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976338">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976338,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976338);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976338">
                            </div>
                            <div id="Reply1976338" class="replydiv">
                            </div>
                            <div id="AxajTip21976338">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方80辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:08:22
                        </dd>
                        <dd class="oDetail">
                            我个人觉得，此次微软的目的是“强行戒奶”，大家对XP的感情太好，依赖性太大；不利于他的新系统推广与应用。公司是靠盈利为目的，东西卖不出去，还谈何盈利
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976337,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976337">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976337,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976337);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976337">
                            </div>
                            <div id="Reply1976337" class="replydiv">
                            </div>
                            <div id="AxajTip21976337">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方81辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:06:03
                        </dd>
                        <dd class="oDetail">
                            我是正版我怕谁？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976324,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976324">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976324,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976324);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976324">
                            </div>
                            <div id="Reply1976324" class="replydiv">
                            </div>
                            <div id="AxajTip21976324">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方82辩：项空月 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:53:25
                        </dd>
                        <dd class="oDetail">
                            很多人在用“黑屏”这个说法，其实是不准确的，准确来说是桌面背景变成黑色，事实上这并不影响你的正常工作。<br />
                            <br />
                            我无法理解用盗版反而在骂微软不厚道的人是怎么想的。<br />
                            我实在无法理解，微软一个正版认证补丁也能炒成如此火热的新闻，似乎使用盗版比正版更有理。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976264,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976264">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976264,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976264);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976264">
                            </div>
                            <div id="Reply1976264" class="replydiv">
                            </div>
                            <div id="AxajTip21976264">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方83辩：Adrian </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:53:10
                        </dd>
                        <dd class="oDetail">
                            支持正版，人人有责，除非买不起
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976263,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976263">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976263,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976263);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976263">
                            </div>
                            <div id="Reply1976263" class="replydiv">
                            </div>
                            <div id="AxajTip21976263">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方84辩：项空月 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:52:53
                        </dd>
                        <dd class="oDetail">
                            从这个补丁的特性可以看出：<br />
                            <br />
                            1、微软意识到盗版带来的利益损失<br />
                            2、但这些利益损失带来了一批可能比较忠诚的用户 3、因此它采用提示的方式鼓励用户安装正版，而没有去破坏盗版系统
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976261,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976261">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976261,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976261);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976261">
                            </div>
                            <div id="Reply1976261" class="replydiv">
                            </div>
                            <div id="AxajTip21976261">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方85辩：项空月 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:51:52
                        </dd>
                        <dd class="oDetail">
                            使用盗版windows的用户，凭什么理直气壮地说微软不厚道？<br />
                            <br />
                            1、你可以选择不安装WGA补丁<br />
                            2、即使你安装了，也有方法可以去除，你激动什么？ 3、每小时桌面背景变黑一次，影响你什么了？相对于你用盗版windows影响MS的利益，谁受的影响更大？ 4、你偷了他人的东西，反客为主成为别人大爷了？
                            5、我电脑里也有盗版的XP，但我不会说微软怎么怎么，反而感谢它。我会选择不安装WGA更新，闭口使用盗版。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976250,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976250">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976250,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976250);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976250">
                            </div>
                            <div id="Reply1976250" class="replydiv">
                            </div>
                            <div id="AxajTip21976250">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方86辩：项空月 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:49:36
                        </dd>
                        <dd class="oDetail">
                            这不是个新东西。WGA补丁不是第一次出现，以往已经出现过2次，假设你的windows设置的是自动下载以及安装更新，你在安装补丁后会被告知使用的是盗版。<br />
                            和以往不同的是，这次的WGA加多了一个元素：每小时“黑背景”一次。<br />
                            <br />
                            正版认证补丁的特性 1、非强制安装，你完全可以选择不安装，这样你就不会收到任何提示。 2、这是全球投放的补丁，并非针对中国大陆，与番茄花园事件不一样。 3、每小时将背景变黑一次，但这不会影响正常的工作。
                            从这个补丁的特性可以看出： 1、微软意识到盗版带来的利益损失 2、但这些利益损失带来了一批可能比较忠诚的用户 3、因此它采用提示的方式鼓励用户安装正版，而没有去破坏盗版系统
                            所谓的超过8成网民反对这一举措 这从侧面说出几个事实： 1、大多数中国人，&amp;
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976235,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976235">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976235,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976235);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976235">
                            </div>
                            <div id="Reply1976235" class="replydiv">
                            </div>
                            <div id="AxajTip21976235">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方87辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:38:10
                        </dd>
                        <dd class="oDetail">
                            如果这么炒作一下，然后再把软件价格降下来（就像office2007），那么微软的策略就太成功了!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976178,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976178">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976178,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976178);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976178">
                            </div>
                            <div id="Reply1976178" class="replydiv">
                            </div>
                            <div id="AxajTip21976178">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方88辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:33:07
                        </dd>
                        <dd class="oDetail">
                            我看微软的目的肯定能实现一些，其中一些会转向linux，这也是linux的机会吧!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976143,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976143">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976143,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976143);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976143">
                            </div>
                            <div id="Reply1976143" class="replydiv">
                            </div>
                            <div id="AxajTip21976143">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方89辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:22:26
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    微软的目的并不能得到。首先我是支持反盗版的，虽然我自己也是用盗版，但显然用盗版并不是一件值得呐喊的事。 只有通过法律才能制约盗版的猖獗。</div>
                            </fieldset>
                            同意。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976082,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976082">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976082,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976082);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976082">
                            </div>
                            <div id="Reply1976082" class="replydiv">
                            </div>
                            <div id="AxajTip21976082">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方90辩：newbug </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:17:31
                        </dd>
                        <dd class="oDetail">
                            地球时间公元2015年，全世界都在用盗版操作系统，致使微软不得不放弃操作系统的开发。windows 7 成为绝版。windows 8被直接扼杀在摇篮里。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976047,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976047">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976047,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976047);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976047">
                            </div>
                            <div id="Reply1976047" class="replydiv">
                            </div>
                            <div id="AxajTip21976047">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方91辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:16:04
                        </dd>
                        <dd class="oDetail">
                            这样做 对微软还是有一定的效果的!
                            <br />
                            <br />
                            它抓住了用盗版人的心理
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976035,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976035">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976035,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976035);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976035">
                            </div>
                            <div id="Reply1976035" class="replydiv">
                            </div>
                            <div id="AxajTip21976035">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方92辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:15:43
                        </dd>
                        <dd class="oDetail">
                            中国的gov 网站非windows进不去，网银的更是只能在windows下才能正常使用。想离开微软，gov 做好了，才能做好，鬼才知道gov 和微软签订了什么协议。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976032,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976032">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976032,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976032);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976032">
                            </div>
                            <div id="Reply1976032" class="replydiv">
                            </div>
                            <div id="AxajTip21976032">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方93辩：gareth </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:05:55
                        </dd>
                        <dd class="oDetail">
                            对整个行业发展来看，我支持MS的正版行动。除了商业利益是其目的，同样也能促进当前的软件格局。<br />
                            <br />
                            促进中国的专利保护意识，使人们更重视科技创新和对专利权利的重视。<br />
                            <br />
                            长远看：利大于弊!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975970,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975970">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975970,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975970);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975970">
                            </div>
                            <div id="Reply1975970" class="replydiv">
                            </div>
                            <div id="AxajTip21975970">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方94辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:04:14
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    <fieldset class="feedBack">
                                        <legend class="fb_title">引用jackying的评论:</legend>
                                        <div class="fb_content">
                                            中国人，喜欢 免费使用正版软件。</div>
                                    </fieldset>
                                    你没有付费怎么能说使用的是正版软件呢</div>
                            </fieldset>
                            shi de
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975958,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975958">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975958,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975958);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975958">
                            </div>
                            <div id="Reply1975958" class="replydiv">
                            </div>
                            <div id="AxajTip21975958">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方95辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:00:37
                        </dd>
                        <dd class="oDetail">
                            我觉得可以……吧……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975935,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975935">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975935,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975935);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975935">
                            </div>
                            <div id="Reply1975935" class="replydiv">
                            </div>
                            <div id="AxajTip21975935">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方96辩：不匿名了 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:54:21
                        </dd>
                        <dd class="oDetail">
                            懂得一点windows的人虽然很多，但是相比之下不懂的人更多，其中不乏很多的高层群体，他们出于工作考虑，也许会购买正版windows。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975894,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975894">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975894,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975894);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975894">
                            </div>
                            <div id="Reply1975894" class="replydiv">
                            </div>
                            <div id="AxajTip21975894">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方97辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:53:13
                        </dd>
                        <dd class="oDetail">
                            虽然我用的是预装的vista,但是我还是很低调,因为我不是不要脸的人,因为家里其他几台电脑装的都是盗版的XP
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975884,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975884">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975884,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975884);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975884">
                            </div>
                            <div id="Reply1975884" class="replydiv">
                            </div>
                            <div id="AxajTip21975884">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方98辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:49:38
                        </dd>
                        <dd class="oDetail">
                            MS也就是想做个超级大的广告，说大家别用XP了，用Vista吧，盗版的也可以
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975859,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975859">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975859,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975859);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975859">
                            </div>
                            <div id="Reply1975859" class="replydiv">
                            </div>
                            <div id="AxajTip21975859">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方99辩：loki </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:43:51
                        </dd>
                        <dd class="oDetail">
                            同意，这几天已经无数朋友问我这事了，他们非常担心
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974925,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974925">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974925,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974925);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974925">
                            </div>
                            <div id="Reply1974925" class="replydiv">
                            </div>
                            <div id="AxajTip21974925">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">正方100辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:40:18
                        </dd>
                        <dd class="oDetail">
                            支持微软，没有微软就没有我们的今天，就没有我们的明天
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974894,1,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974894">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974894,67605,1);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974894);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974894">
                            </div>
                            <div id="Reply1974894" class="replydiv">
                            </div>
                            <div id="AxajTip21974894">
                            </div>
                        </dd>
                    </dl>
                    <div id="news-bottom">
                        <div id="news-bottom-left">
                            <div id="news-bottom-list">
                                <span>上一页</span>[<strong><span>1</span></strong>] [<a href="#ncomment" onclick="javascript:Ncomment1('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=1','replyo')">2</a>]
                                <a href="#ncomment" onclick="javascript:Ncomment1('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=1','replyo')">
                                    下一页</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- reverse Opinion -->
            <div id="reverseOpinion">
                <table id="revHead" cellpadding="0" cellspacing="0">
                    <tr>
                        <td rowspan="2">
                            <img align="absMiddle" alt="" height="62" src="http://www.cnbeta.com/images/argue_reverse.png"
                                width="76" />
                        </td>
                        <td class="revTopic" colspan="2">
                            主观点：不能！用技术手段来反盗版只是徒劳而已。
                        </td>
                    </tr>
                    <tr>
                        <td>
                            观点数：236 得票：<span id="vote2">726</span>
                        </td>
                        <td>
                            <a href="javascript:Votesu('67605',2);" style="font-size: 14px; font-weight: bold">我支持</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id="status2">
                            </div>
                            <div id="stat2">
                            </div>
                        </td>
                    </tr>
                </table>
                <div id="postr">
                    <dl>
                        <div class="Content">
                            <div class="row">
                                <label>
                                    评论主题:</label><input id="subject2" class="input" name="nowsubject2" size="20" type="text"
                                        value="Re:微软的目的能否达到？" /></div>
                            <div class="row">
                                <label>
                                    您的大名:</label><input id="name2" class="input" name="nowname2" size="20" type="text" /><input
                                        id="type2" name="nowtype" type="hidden" value="2" /></div>
                            <div class="row">
                                <label>
                                    您的主页:</label><input id="page2" class="input" name="nowpage2" size="20" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的邮箱:</label><input id="email2" class="input" name="nowemail2" size="20" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的评论:</label><textarea id="comment2" cols="20" name="comment2" onfocus="_Showvaldiv(2);"
                                        rows="1"></textarea></div>
                            <div id="valdiv2" class="row" style="display: none">
                                <label>
                                    验证码:</label><input id="valimg2" class="input" name="valimg2" size="20" style="width: 40px"
                                        type="text" /><img id="safecode2" align="absBottom" alt="更换一张验证码图片" border="0" name="safecode"
                                            onclick="reloadcode(2);" src="" />
                                [<a href="javascript:reloadcode(2);">刷新验证码</a>]</div>
                            <div id="AxajTip2" class="AxajTip">
                            </div>
                            <span class="row" style="text-align: center">
                                <input align="top" onclick="_postReply(2,67605,2)" src="http://www.cnbeta.com/images/argue_btn_reverser.png"
                                    type="image" />
                            </span>
                            <div id="AxajTip22">
                            </div>
                            <div id="AxajTip32">
                            </div>
                        </div>
                    </dl>
                </div>
                <a id="ncomment" name="ncomment"></a>
                <div id="textloading2" style="line-height: 100%; background-color: #ff0000; display: none;
                    float: left; height: 10px; color: white">
                </div>
                <div id="replyr">
                    <dl>
                        <dt class="oTitle">反方1辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:47:23
                        </dd>
                        <dd class="oDetail">
                            不是可以选择不装么？这只是给装了正版的人的安慰，花那么多钱， 总要有点说法吧!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974423,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974423">74</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974423,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974423);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974423">
                            </div>
                            <div id="Reply1974423" class="replydiv">
                            </div>
                            <div id="AxajTip21974423">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方2辩：jackying </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:58:39
                        </dd>
                        <dd class="oDetail">
                            中国人，喜欢 免费使用正版软件。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974523,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974523">37</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974523,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974523);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974523">
                            </div>
                            <div id="Reply1974523" class="replydiv">
                            </div>
                            <div id="AxajTip21974523">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方3辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:04:40
                        </dd>
                        <dd class="oDetail">
                            想当初XP刚出来，激活技术是何等的牛X，装一个盗版XP且能激活那必须是懂一点专业知识的。现在呢，GHOSPXP连老太太都会用。还指望通过技术手段反盗版吗，别做梦了，反盗版措施越先进，越能激发别人破解的欲望，这世界上不是只有微软才有天才
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974569,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974569">28</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974569,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974569);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974569">
                            </div>
                            <div id="Reply1974569" class="replydiv">
                            </div>
                            <div id="AxajTip21974569">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方4辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:22:01
                        </dd>
                        <dd class="oDetail">
                            短期有效，长期无效。<br />
                            如果觉得一件不得不买的商品贵了，你可以选择：1.买。2.看看有没有更便宜的。<br />
                            微软深知这个东西，而很多人不知道还有没有“其他的”，所以微软就想让很多人在一种“窘境”中克服困难拿出钞票来购买它的产品。<br />
                            微软所设下的“窘境”在10年以前已经开始，所以现在是收网的时机。不管是不是有多少人会选择“其他的”，它总是要收网的。所以普通用户肯定中招----买! 但经过一段时间后，相信大多数用户也会了解到，Windows并不是唯一的解决方法。因此，与其多数潜在用户慢慢流失掉，不如快刀斩乱麻，早点套现。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974723,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974723">16</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974723,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974723);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974723">
                            </div>
                            <div id="Reply1974723" class="replydiv">
                            </div>
                            <div id="AxajTip21974723">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方5辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:46:54
                        </dd>
                        <dd class="oDetail">
                            微软想用这种下三烂的手段来文明用语迫偶等天朝百姓就范，绝对不可能。。君不见抗战八年，天朝百姓都没屈服。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974421,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974421">15</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974421,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974421);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974421">
                            </div>
                            <div id="Reply1974421" class="replydiv">
                            </div>
                            <div id="AxajTip21974421">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方6辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:33
                        </dd>
                        <dd class="oDetail">
                            如果50元一套我会考虑，但是现在太贵了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974446,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974446">13</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974446,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974446);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974446">
                            </div>
                            <div id="Reply1974446" class="replydiv">
                            </div>
                            <div id="AxajTip21974446">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方7辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:05:02
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    我真的是服了你们这些中国人了，这种行为传到国外去，有点文化的，都不知道脸往哪儿搁。看来CNN那个主持说得没错：一群暴徒，五十年来都没有变!</div>
                            </fieldset>
                            你就不是中国人？最看不起你这种自以为高高在上的人
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974574,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974574">12</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974574,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974574);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974574">
                            </div>
                            <div id="Reply1974574" class="replydiv">
                            </div>
                            <div id="AxajTip21974574">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方8辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:19:49
                        </dd>
                        <dd class="oDetail">
                            達不到，除非突然用戶的盜版系統不能使用，可能會有人去買所謂的正版，但另一方面，也會有很多人抛棄MS 的WINDOWS，轉用LINUX。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974710,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974710">10</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974710,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974710);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974710">
                            </div>
                            <div id="Reply1974710" class="replydiv">
                            </div>
                            <div id="AxajTip21974710">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方9辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:31:42
                        </dd>
                        <dd class="oDetail">
                            微软：能不能不qj我老婆？<br />
                            X国网民：qj你老婆其实对你很有利。<br />
                            微软：那你qj的时候能不能带套？<br />
                            X国网民：我要告你侵犯我人身权益!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976470,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976470">9</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976470,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976470);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976470">
                            </div>
                            <div id="Reply1976470" class="replydiv">
                            </div>
                            <div id="AxajTip21976470">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方10辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:51:28
                        </dd>
                        <dd class="oDetail">
                            程序总是人做的，是人做的就有办法解决。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974456,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974456">8</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974456,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974456);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974456">
                            </div>
                            <div id="Reply1974456" class="replydiv">
                            </div>
                            <div id="AxajTip21974456">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方11辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:11:48
                        </dd>
                        <dd class="oDetail">
                            Vista就是鲍尔默，XP就是盖茨，前者臃肿无比行动迟缓呆头呆脑，后者短小精干平易近人，所以我选择XP，但正版XP太贵啊，像我们这种SHZY初级阶段的人买不起啊!
                            孩子2个月的奶粉钱那!!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975597,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975597">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975597,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975597);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975597">
                            </div>
                            <div id="Reply1975597" class="replydiv">
                            </div>
                            <div id="AxajTip21975597">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方12辩：二师兄 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:21:41
                        </dd>
                        <dd class="oDetail">
                            送微软1个字，囧。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974721,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974721">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974721,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974721);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974721">
                            </div>
                            <div id="Reply1974721" class="replydiv">
                            </div>
                            <div id="AxajTip21974721">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方13辩：may6elove~Erection </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:36:53
                        </dd>
                        <dd class="oDetail">
                            原则上我是支持正版的，就像我不希望我的文章被抄袭一样。<br />
                            <br />
                            但是，微软这样做是不对的，如果中国人有钱了，或者说由于工作需要必须使用正版，那他们会使用。但是，如果你用这样的手段文明用语迫我们，我觉得，这完全是以暴易暴。<br />
                            <br />
                            诚如正方观点所说，这一招对普通用户会有效，但这些普通用户使哪些呢，大多还不是原本在使用盗版的企业用户，而对于企业用户，微软完全没有必要使用这样激起千层浪的手段。<br />
                            <br />
                            而真正到了数以亿计的个人用户身上，技术这一招肯定不可行。但就拿这个“黑屏”来说，连Vista都可以破解，何况一个小小的黑屏。只要你用反盗版手段，就会对付手段。就算微软这样做可以让一些用户转而去购买正版，特别是企事业单位等，但在广大中国用户群体面前，他的形象损失恐怕比这&amp;
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974868,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974868">6</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974868,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974868);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974868">
                            </div>
                            <div id="Reply1974868" class="replydiv">
                            </div>
                            <div id="AxajTip21974868">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方14辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:33:05
                        </dd>
                        <dd class="oDetail">
                            用不起正版，只好用盗版呢。中国人的收入还是太低! 如果正版软件的价格在月收入的2％左右就可以接受。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974833,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974833">6</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974833,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974833);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974833">
                            </div>
                            <div id="Reply1974833" class="replydiv">
                            </div>
                            <div id="AxajTip21974833">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方15辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:38:44
                        </dd>
                        <dd class="oDetail">
                            我已经处理掉了MS Office<br />
                            现在用着WPS，配备OOo<br />
                            <br />
                            要不是我还需要DirectX玩游戏估计我就换上Ubuntu了我哥们不玩游戏就是Ubuntu
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975797,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975797">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975797,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975797);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975797">
                            </div>
                            <div id="Reply1975797" class="replydiv">
                            </div>
                            <div id="AxajTip21975797">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方16辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:20:56
                        </dd>
                        <dd class="oDetail">
                            一切都和中国的经济挂钩啊。有钱了谁不用正版，没钱怎么用啊，去抢啊，平平安安叔叔会抓的。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974714,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974714">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974714,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974714);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974714">
                            </div>
                            <div id="Reply1974714" class="replydiv">
                            </div>
                            <div id="AxajTip21974714">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方17辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:14:44
                        </dd>
                        <dd class="oDetail">
                            计算机技术就是在不断的加密解密中进步的。所以，永远没有无法突破的技术。<br />
                            <br />
                            对于技术人员来说，微软的技术手段反盗版，只不过是一场闹剧。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974674,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974674">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974674,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974674);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974674">
                            </div>
                            <div id="Reply1974674" class="replydiv">
                            </div>
                            <div id="AxajTip21974674">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方18辩：YeLo </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:03:31
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    我很悲观，就目前的国民素质，微软最好是直接停止全部中文产品开发，放弃中国市场。</div>
                            </fieldset>
                            难道你以为MS都像你猪脑子？放弃中国市场，你认为MS忍心看着这么大块肥肉落入别人嘴里？而且全世界不止XP一个操作系统，MS不做中国市场生意自然有人补上。<br />
                            <br />
                            还有，天天素质素质的挂嘴边，中国素质不行，你咋不早点滚？ 中国普遍收入高，或者MS把它高傲的价格降下来，谁不想用正版，享受正版服务？ 你真的可笑了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977718,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977718">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977718,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977718);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977718">
                            </div>
                            <div id="Reply1977718" class="replydiv">
                            </div>
                            <div id="AxajTip21977718">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方19辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:01:23
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    我真的是服了你们这些中国人了，这种行为传到国外去，有点文化的，都不知道脸往哪儿搁。看来CNN那个主持说得没错：一群暴徒，五十年来都没有变!</div>
                            </fieldset>
                            你TMD不是中国人啊! 不是中国人你TMD别学汉语啊! ! !
                            <br />
                            <br />
                            有本事这种话你站出来! 丫的踩死你!
                            <br />
                            <br />
                            <br />
                            <br />
                            想你这种J8人就应该，查你IP找到你，把你J8给你切掉! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977138,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977138">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977138,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977138);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977138">
                            </div>
                            <div id="Reply1977138" class="replydiv">
                            </div>
                            <div id="AxajTip21977138">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方20辩：Ubuntu </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:18:56
                        </dd>
                        <dd class="oDetail">
                            这次是对个人用户学习安装其他系统的一次机会，这对我来说也是一次机会，<br />
                            <br />
                            我希望我能被装在更多的电脑上：D
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975200,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975200">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975200,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975200);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975200">
                            </div>
                            <div id="Reply1975200" class="replydiv">
                            </div>
                            <div id="AxajTip21975200">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方21辩：痞子猫 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:23:31
                        </dd>
                        <dd class="oDetail">
                            不能，这样并不能体现出正版和对于盗版的优势在何处，如果只是一张桌面的话。如果微软正版服务更好的话，或许人们对正版软件就会有更大的兴趣。可现在，看不到这种区别。微软的正版战略，也需要考虑到法律、市场、价格等诸多因素，路还很长。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974739,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974739">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974739,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974739);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974739">
                            </div>
                            <div id="Reply1974739" class="replydiv">
                            </div>
                            <div id="AxajTip21974739">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方22辩：CQH </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:15:08
                        </dd>
                        <dd class="oDetail">
                            我觉得根本没用，这样或许对unix和linux更有利。在中国几乎都还会用盗版的，而且我也相信，不管微软怎么反盗版，都会有人破解出来给我们用盗版，而且我们也会毫不客气的用盗版
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974677,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974677">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974677,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974677);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974677">
                            </div>
                            <div id="Reply1974677" class="replydiv">
                            </div>
                            <div id="AxajTip21974677">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方23辩：dawnsang </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:05:08
                        </dd>
                        <dd class="oDetail">
                            这种技术根本是治标不治本，关键是软件专利技术的深入人心，人人都有了这份意识，就一切水到渠成了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974575,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974575">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974575,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974575);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974575">
                            </div>
                            <div id="Reply1974575" class="replydiv">
                            </div>
                            <div id="AxajTip21974575">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方24辩：千寻海盗 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:59:44
                        </dd>
                        <dd class="oDetail">
                            拿黑屏和、正版提示与千多块钱的RMB相对比，我会毫不犹豫地选择前者。。。下层建筑起决定性作用，这是一个现实的社会。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974536,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974536">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974536,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974536);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974536">
                            </div>
                            <div id="Reply1974536" class="replydiv">
                            </div>
                            <div id="AxajTip21974536">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方25辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:21:56
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用wwxx的评论:</legend>
                                <div class="fb_content">
                                    他的目的是什么啊？我都不知道哦，是让我们购买正版吗？别人不知道，对于我来说这个事情很难，除非我有几亿美元的财产，会考虑购买正版的，貌似我的盗版系统在他的微软官方网站上进行验证，并没有说我是盗版啊。这件事情有带你郁闷啊</div>
                            </fieldset>
                            一套Windows不到1000，按1000算，你要有几亿美元（十几亿人民币）才买1000块的Windows，那你要有50万人民币才去买5毛钱的油条咯？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979131,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979131">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979131,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979131);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979131">
                            </div>
                            <div id="Reply1979131" class="replydiv">
                            </div>
                            <div id="AxajTip21979131">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方26辩：as </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 17:08:35
                        </dd>
                        <dd class="oDetail">
                            买正版的，你不黑他屏他一样买正版。<br />
                            <br />
                            买盗版的，你爆了他电脑他也不会买正版。<br />
                            <br />
                            中国现在那种人多呢？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977467,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977467">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977467,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977467);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977467">
                            </div>
                            <div id="Reply1977467" class="replydiv">
                            </div>
                            <div id="AxajTip21977467">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方27辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:03:29
                        </dd>
                        <dd class="oDetail">
                            使用正版并不符合我们中国人的消费习惯，就我国的国情，人均收入来看，我们并不能完全用得起如此昂贵的软件。当一份免费的“大餐”放在我们面前的时候，我们没有理由浪费这样的机会，我们要积极发扬节约的优良传统，把免费进行到底!
                            抵制昂贵的微软软件，支持国产翻版
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975951,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975951">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975951,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975951);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975951">
                            </div>
                            <div id="Reply1975951" class="replydiv">
                            </div>
                            <div id="AxajTip21975951">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方28辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:28:59
                        </dd>
                        <dd class="oDetail">
                            中国人民是不怕威胁的!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974791,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974791">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974791,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974791);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974791">
                            </div>
                            <div id="Reply1974791" class="replydiv">
                            </div>
                            <div id="AxajTip21974791">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方29辩：齐颂 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:23:50
                        </dd>
                        <dd class="oDetail">
                            收效甚微，除非是盗版真的被严厉禁止，只要有盗版存在的一天，人们就会在买与不买中犹豫，买了还怕亏了。微软真正成功的一天应该是，“咱发工资了，可以去买XP了”。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974741,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974741">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974741,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974741);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974741">
                            </div>
                            <div id="Reply1974741" class="replydiv">
                            </div>
                            <div id="AxajTip21974741">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方30辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:21:10
                        </dd>
                        <dd class="oDetail">
                            反盗版技术虽然一直在推陈出新，但破解技术当仁不让，所以大家不必着急，黑屏只是暂时的，很快就会迎来亮丽曙光。我这么大了就没用过正版的软件，恩~~~~应该说是收费的软件（除了网络游戏）。不是不想用正版，而是不需要，有免费的不用，用收费的，难道钱多还是有病？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974715,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974715">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974715,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974715);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974715">
                            </div>
                            <div id="Reply1974715" class="replydiv">
                            </div>
                            <div id="AxajTip21974715">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方31辩：钱的问题 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:09:27
                        </dd>
                        <dd class="oDetail">
                            降低正版价格或者提高国民收入才是盗版的解决之道。<br />
                            <br />
                            一个正版卖10元我绝对不去买盗版了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974625,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974625">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974625,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974625);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974625">
                            </div>
                            <div id="Reply1974625" class="replydiv">
                            </div>
                            <div id="AxajTip21974625">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方32辩：你猜 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:59:29
                        </dd>
                        <dd class="oDetail">
                            这里我们不讨论盗版对错的问题，我只看微软的这种作法是否合理。<br />
                            <br />
                            我们用着盗版系统是没错，但是假如微软更新的不只是让你黑屏而已呢？假如微软是个“邪恶”的公司，他自动更新系统，收集的的隐私信息，甚至是你的银行帐号，你的所有上网记录，上网习惯等等等等。你不觉得很恐怖吗？现在国人大多数用WINDOWS操作系统，假如微软拿它来作坏事呢？他完全可以自动更新个你不知道的东西，用来监控你。<br />
                            <br />
                            是不是用着盗版，我们保持隐私的权利就没了？<br />
                            <br />
                            微软有什么权利控制那些安装了自己操作系统的终端？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974532,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974532">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974532,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974532);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974532">
                            </div>
                            <div id="Reply1974532" class="replydiv">
                            </div>
                            <div id="AxajTip21974532">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方33辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:56:07
                        </dd>
                        <dd class="oDetail">
                            论技术MS在软件公司中比较高,可在民间他也就是菜菜,人民的力量是伟大的.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974499,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974499">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974499,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974499);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974499">
                            </div>
                            <div id="Reply1974499" class="replydiv">
                            </div>
                            <div id="AxajTip21974499">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方34辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:55:35
                        </dd>
                        <dd class="oDetail">
                            微软的目的并不能得到。首先我是支持反盗版的，虽然我自己也是用盗版，但显然用盗版并不是一件值得呐喊的事。<br />
                            <br />
                            <br />
                            <br />
                            只有通过法律才能制约盗版的猖獗。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974493,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974493">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974493,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974493);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974493">
                            </div>
                            <div id="Reply1974493" class="replydiv">
                            </div>
                            <div id="AxajTip21974493">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方35辩：南通IT人ట </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:54:04
                        </dd>
                        <dd class="oDetail">
                            打倒微软垄断XP 我也不用VISTA
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974480,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974480">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974480,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974480);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974480">
                            </div>
                            <div id="Reply1974480" class="replydiv">
                            </div>
                            <div id="AxajTip21974480">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方36辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:50
                        </dd>
                        <dd class="oDetail">
                            不就黑屏嘛! 黑黑无所谓!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974449,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974449">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974449,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974449);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974449">
                            </div>
                            <div id="Reply1974449" class="replydiv">
                            </div>
                            <div id="AxajTip21974449">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方37辩：XXX </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:49:18
                        </dd>
                        <dd class="oDetail">
                            道高一尺魔高一丈，微软要想普及正版，首先他的正版价格就必须降到和他在美国的售价在用户月收入所占的比例相同的地步。同时可以加入严格的区域验证制度防止这边的低价产品外流。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974435,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974435">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974435,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974435);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974435">
                            </div>
                            <div id="Reply1974435" class="replydiv">
                            </div>
                            <div id="AxajTip21974435">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方38辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 10:12:11
                        </dd>
                        <dd class="oDetail">
                            盗版一样可以用，我的就没有黑屏。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979891,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979891">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979891,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979891);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979891">
                            </div>
                            <div id="Reply1979891" class="replydiv">
                            </div>
                            <div id="AxajTip21979891">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方39辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:21:39
                        </dd>
                        <dd class="oDetail">
                            如果不是办公需求的话，如果不是Linux亲和度不够的话，很难想像还有多少用户使用windows的产品。<br />
                            <br />
                            <br />
                            <br />
                            想象下，某一天，你的公司全体更换了linux，办公软件换成wps或者openoffice,那么你家里面的是否也会更换呢？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979527,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979527">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979527,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979527);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979527">
                            </div>
                            <div id="Reply1979527" class="replydiv">
                            </div>
                            <div id="AxajTip21979527">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方40辩：ves </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:20:00
                        </dd>
                        <dd class="oDetail">
                            支持正版，但太贵了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979513,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979513">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979513,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979513);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979513">
                            </div>
                            <div id="Reply1979513" class="replydiv">
                            </div>
                            <div id="AxajTip21979513">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方41辩：catking0001 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:46:36
                        </dd>
                        <dd class="oDetail">
                            这次动静就像当年sp2那个大补丁出来一样，也是必须通过正版验证，只不过那个是三十天倒计时，比这个黑屏还狠，那样的技术都能破解了，何况这个呢。两个基本上是一样的，只不过这个频率比较频繁一点而已，让人比较恶心吧，过两天就没事了。还是会风平浪静的。拭目以待吧
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978562,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978562">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978562,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978562);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978562">
                            </div>
                            <div id="Reply1978562" class="replydiv">
                            </div>
                            <div id="AxajTip21978562">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方42辩：諾文 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:37:20
                        </dd>
                        <dd class="oDetail">
                            世界黑客那么多, 我就不信搞不定這個 WGA
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978534,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978534">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978534,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978534);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978534">
                            </div>
                            <div id="Reply1978534" class="replydiv">
                            </div>
                            <div id="AxajTip21978534">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方43辩：lzn1007 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:08:02
                        </dd>
                        <dd class="oDetail">
                            不能，不论采取什么手段，超过了普通大众的承受能力就不可能为大家接受，高高在上的价格只有企业用户会无条件的使用正版，盗版使微软获得了垄断地位，严厉打击盗版会使普通大众转向其它操作系统，如果只是上网聊天看网页之类应用的话，还是有很多其它选择的。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975990,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975990">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975990,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975990);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975990">
                            </div>
                            <div id="Reply1975990" class="replydiv">
                            </div>
                            <div id="AxajTip21975990">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方44辩：JEDI </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:22:35
                        </dd>
                        <dd class="oDetail">
                            微软太不了解中国的国情了，关键部门的领导不支持，你能有什么作为。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974729,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974729">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974729,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974729);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974729">
                            </div>
                            <div id="Reply1974729" class="replydiv">
                            </div>
                            <div id="AxajTip21974729">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方45辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:00:49
                        </dd>
                        <dd class="oDetail">
                            反盗版我是支持的，但是用这种手段我很反感! ~
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974540,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974540">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974540,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974540);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974540">
                            </div>
                            <div id="Reply1974540" class="replydiv">
                            </div>
                            <div id="AxajTip21974540">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方46辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:55:47
                        </dd>
                        <dd class="oDetail">
                            直觉告诉我，m$它不能，我能。男人就怕说不能
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974497,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974497">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974497,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974497);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974497">
                            </div>
                            <div id="Reply1974497" class="replydiv">
                            </div>
                            <div id="AxajTip21974497">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方47辩：不知叫3小 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:53:20
                        </dd>
                        <dd class="oDetail">
                            道高一尺，魔高一丈~~<br />
                            <br />
                            微软的正版注册的都能被破解，难道区区一个WGA就能让无敌的中国人俯首称臣么。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974469,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974469">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974469,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974469);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974469">
                            </div>
                            <div id="Reply1974469" class="replydiv">
                            </div>
                            <div id="AxajTip21974469">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方48辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:52:59
                        </dd>
                        <dd class="oDetail">
                            价格不降，盗版会一直持续
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974467,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974467">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974467,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974467);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974467">
                            </div>
                            <div id="Reply1974467" class="replydiv">
                            </div>
                            <div id="AxajTip21974467">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方49辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:48:49
                        </dd>
                        <dd class="oDetail">
                            我真的是服了你们这些中国人了，这种行为传到国外去，有点文化的，都不知道脸往哪儿搁。看来CNN那个主持说得没错：一群暴徒，五十年来都没有变!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974430,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974430">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974430,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974430);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974430">
                            </div>
                            <div id="Reply1974430" class="replydiv">
                            </div>
                            <div id="AxajTip21974430">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方50辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:44:22
                        </dd>
                        <dd class="oDetail">
                            希望不能～!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974404,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974404">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974404,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974404);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974404">
                            </div>
                            <div id="Reply1974404" class="replydiv">
                            </div>
                            <div id="AxajTip21974404">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方51辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-24 13:27:41
                        </dd>
                        <dd class="oDetail">
                            那人就是没钱啊...你怎么整人都是不买...有钱人有可能会有用吧...不过那么有钱能买起微软软件的人还是占少数...
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1989638,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1989638">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1989638,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1989638);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31989638">
                            </div>
                            <div id="Reply1989638" class="replydiv">
                            </div>
                            <div id="AxajTip21989638">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方52辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:05:25
                        </dd>
                        <dd class="oDetail">
                            好吧.我换linux.<br />
                            <br />
                            就不相信中国人,失去微软会,失去一切<br />
                            <br />
                            <br />
                            <br />
                            为啥我们不能教育改革?到小学生都学LINXU的时候,我看windows 在中国时日没多了.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979410,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979410">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979410,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979410);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979410">
                            </div>
                            <div id="Reply1979410" class="replydiv">
                            </div>
                            <div id="AxajTip21979410">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方53辩：... </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:00:40
                        </dd>
                        <dd class="oDetail">
                            显然不能。1、我不联网更新，把微软IP禁掉，难不成它还当黑客侵入我电脑不成（虽然微软是Windows最大的黑客）？<br />
                            <br />
                            2、道高一尺，魔高一丈。电脑的控制权在自己身上，总有破解的办法。<br />
                            <br />
                            3、除非它能让所有人都不用Windows，或是让Windows完全免费，否则盗版依旧。<br />
                            <br />
                            4、现在在中国谈反盗版，只是炒作而已。 5、其实我们应该抵制Windows，支持源码开放的免费的操作系统（如linux)。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978433,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978433">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978433,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978433);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978433">
                            </div>
                            <div id="Reply1978433" class="replydiv">
                            </div>
                            <div id="AxajTip21978433">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方54辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:58:16
                        </dd>
                        <dd class="oDetail">
                            我们并不是真的喜欢盗版，而是微软无视中国人民低收入及多数人贫困的现状，定价同发达国家一样的水平，广大的中国贫困人民除了无奈的选择盗版还能怎么样呢？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978423,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978423">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978423,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978423);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978423">
                            </div>
                            <div id="Reply1978423" class="replydiv">
                            </div>
                            <div id="AxajTip21978423">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方55辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:44:51
                        </dd>
                        <dd class="oDetail">
                            即使某一天不能免费使用windows产品了，我也不会花钱去买正版。<br />
                            <br />
                            因为太贵啦，考虑其他操作系统的说。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978389,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978389">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978389,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978389);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978389">
                            </div>
                            <div id="Reply1978389" class="replydiv">
                            </div>
                            <div id="AxajTip21978389">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方56辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:46:34
                        </dd>
                        <dd class="oDetail">
                            免费下载和使用，可以学人家腾讯搞增值业务来提高
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978063,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978063">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978063,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978063);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978063">
                            </div>
                            <div id="Reply1978063" class="replydiv">
                            </div>
                            <div id="AxajTip21978063">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方57辩：nowind </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:55:24
                        </dd>
                        <dd class="oDetail">
                            像微软这种手法不久就会有“XX花园版”“XX论坛版”泛滥了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977875,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977875">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977875,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977875);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977875">
                            </div>
                            <div id="Reply1977875" class="replydiv">
                            </div>
                            <div id="AxajTip21977875">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方58辩：苌蓊芪 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:46:46
                        </dd>
                        <dd class="oDetail">
                            用这种办法绝对没有效果，且不说网友有一堆办法应对，即使找不到相应的对策，大家还可以选择家用版、企业版，或者改用linux等。<br />
                            <br />
                            再说office，现在国产的WPS完全可以替代ms的，况且还有OOo呢。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977848,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977848">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977848,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977848);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977848">
                            </div>
                            <div id="Reply1977848" class="replydiv">
                            </div>
                            <div id="AxajTip21977848">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方59辩：whm </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:44:57
                        </dd>
                        <dd class="oDetail">
                            个人以为不会达到。这只会让微软系统的用户群流失，文明用语着用户去使用Linux，反正现在的Linux越来越好用了...
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977844,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977844">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977844,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977844);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977844">
                            </div>
                            <div id="Reply1977844" class="replydiv">
                            </div>
                            <div id="AxajTip21977844">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方60辩：lucifer </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:28:14
                        </dd>
                        <dd class="oDetail">
                            微软,身居操作系统软件市场的垄断地位。<br />
                            <br />
                            被中国的盗版弄得这么无奈才推行出‘黑屏’这一手段?为的是什么?你觉得微软是想那些用盗版的用户真的回去买正版?我看微软不是这么想的,<br />
                            <br />
                            微软实行‘黑屏’风波一是为了推广VITAS,二是为了让正版用户以后更支持他们,<br />
                            <br />
                            你知道在如果在我们周围,有一家的电脑是安装正版XP的话,那他就会被人骂成笨蛋,傻瓜。之类的,他会怎么想? 我不知道你们身边有没有实例, 我身边就一个人用的是正版XP,
                            当他买回正版XP的时候,我们全宿舍人都笑他,说他傻,现在网上这么多,哪里花的到哪个钱买那东西, 他只是说了一句话 用得心安理得些。 你们自己扪心自问。用盗版,你们真的做到偷偷摸摸用了吗?
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976998,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976998">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976998,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976998);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976998">
                            </div>
                            <div id="Reply1976998" class="replydiv">
                            </div>
                            <div id="AxajTip21976998">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方61辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:01:55
                        </dd>
                        <dd class="oDetail">
                            我很悲观，就目前的国民素质，微软最好是直接停止全部中文产品开发，放弃中国市场。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975941,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975941">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975941,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975941);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975941">
                            </div>
                            <div id="Reply1975941" class="replydiv">
                            </div>
                            <div id="AxajTip21975941">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方62辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:23:13
                        </dd>
                        <dd class="oDetail">
                            不得人心,一天黑一次还可以....一个小时黑一次..强制的...目的肯定达不到
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974734,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974734">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974734,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974734);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974734">
                            </div>
                            <div id="Reply1974734" class="replydiv">
                            </div>
                            <div id="AxajTip21974734">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方63辩：SS </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:12:11
                        </dd>
                        <dd class="oDetail">
                            他太低估中国人民反反盗版的能力了!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974652,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974652">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974652,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974652);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974652">
                            </div>
                            <div id="Reply1974652" class="replydiv">
                            </div>
                            <div id="AxajTip21974652">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方64辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:07:23
                        </dd>
                        <dd class="oDetail">
                            继续享受免费午餐，今天弹出更新，我就选的不装。就算是强制让我的系统运行不了我也不怕，因为我还有UBUNTU呢!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974597,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974597">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974597,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974597);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974597">
                            </div>
                            <div id="Reply1974597" class="replydiv">
                            </div>
                            <div id="AxajTip21974597">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方65辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:06:58
                        </dd>
                        <dd class="oDetail">
                            反对版权意识! 支持开源! ms的邪恶目的绝对不能得到实现! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974592,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974592">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974592,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974592);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974592">
                            </div>
                            <div id="Reply1974592" class="replydiv">
                            </div>
                            <div id="AxajTip21974592">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方66辩：alpha </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:06:00
                        </dd>
                        <dd class="oDetail">
                            中国人最强大的就是破解。如果一个人想让他花钱买了电脑回来，还要花钱买个系统回来才能用，你说谁会这样干啊，人家当然想有没有什么办法不花钱我也能用了，没有东西在中国是不能被破解滴
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974582,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974582">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974582,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974582);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974582">
                            </div>
                            <div id="Reply1974582" class="replydiv">
                            </div>
                            <div id="AxajTip21974582">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方67辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:02:21
                        </dd>
                        <dd class="oDetail">
                            合理、合适的软件才是我们期望的，简单的技术手段防盗版并不是打击盗版的有效办法，我们承认我们在免费使用盗版，但这前提是微软的软件价格实在是高呀。没有合理的价格，我们依然用盗版。别以为微软有什么了不起，只能说你的软件进入我们的生活早，毛起来了，我们依然可以选择其它
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974550,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974550">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974550,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974550);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974550">
                            </div>
                            <div id="Reply1974550" class="replydiv">
                            </div>
                            <div id="AxajTip21974550">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方68辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:57:52
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    能,只要在媒体上多炒炒,一群对WGA是什么都不知道的人就会去买正版,单位用户和领导们更是屁颠屁颠,又可以...</div>
                            </fieldset>
                            单位正常点都是品牌机,oem的版本和这次黑屏事件完全无关,不知道你表达的是什么东西<br />
                            <br />
                            如果是兼容机,首先他已经违反的法律,再犯次也无所谓了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974517,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974517">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974517,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974517);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974517">
                            </div>
                            <div id="Reply1974517" class="replydiv">
                            </div>
                            <div id="AxajTip21974517">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方69辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:56:29
                        </dd>
                        <dd class="oDetail">
                            道高一尺，魔高一丈
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974505,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974505">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974505,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974505);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974505">
                            </div>
                            <div id="Reply1974505" class="replydiv">
                            </div>
                            <div id="AxajTip21974505">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方70辩：沉睡的骆 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:53:57
                        </dd>
                        <dd class="oDetail">
                            微软也就是做做样子,要彻底解决这个问题,天方夜潭,除非微软不要中国这个市场.<br />
                            <br />
                            <br />
                            <br />
                            微软此刻的做法就如同先让盗版做了免费、足够的广告，占领了市场后，再慢慢收拾摊子的道理一样
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974478,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974478">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974478,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974478);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974478">
                            </div>
                            <div id="Reply1974478" class="replydiv">
                            </div>
                            <div id="AxajTip21974478">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方71辩：我不怕黑 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:52:36
                        </dd>
                        <dd class="oDetail">
                            用技术手段当然是达不到目的的，主要还要看他们后继的措施。现在微软想采取的是渐进式的反盗版做法，这一步这么做了，下一步是什么是最主要的。他们知道反盗版不是一朝一夕可以做到的。<br />
                            <br />
                            单纯用技术手段是不可能做到杜绝盗版的。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974463,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974463">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974463,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974463);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974463">
                            </div>
                            <div id="Reply1974463" class="replydiv">
                            </div>
                            <div id="AxajTip21974463">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方72辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:31
                        </dd>
                        <dd class="oDetail">
                            看到了吧，今天www.microsoft.com访问不了了人民的敌人 就这么倒下了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974445,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974445">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974445,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974445);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974445">
                            </div>
                            <div id="Reply1974445" class="replydiv">
                            </div>
                            <div id="AxajTip21974445">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方73辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:50:06
                        </dd>
                        <dd class="oDetail">
                            反盗版还是得靠教育民众的版权意识，很可惜在中国也许还早几十年，反正无论用什么反盗版，盗版在中国将会长期大面积的存在
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974442,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974442">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974442,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974442);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974442">
                            </div>
                            <div id="Reply1974442" class="replydiv">
                            </div>
                            <div id="AxajTip21974442">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方74辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:43:57
                        </dd>
                        <dd class="oDetail">
                            技术能达到的话，就不存在盗版啦!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974401,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974401">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974401,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974401);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974401">
                            </div>
                            <div id="Reply1974401" class="replydiv">
                            </div>
                            <div id="AxajTip21974401">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方75辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-23 19:09:37
                        </dd>
                        <dd class="oDetail">
                            很容易就绕过了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1986620,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1986620">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1986620,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1986620);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31986620">
                            </div>
                            <div id="Reply1986620" class="replydiv">
                            </div>
                            <div id="AxajTip21986620">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方76辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-23 18:41:18
                        </dd>
                        <dd class="oDetail">
                            我永远坚信网上永远都有免费的午餐<br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            我相信和我一样的人还有很多音乐电影游戏软件除了免费的我全都是盗版的（除了瑞星） 我当然知道盗版不好，把自己计算机的安全性降低了，微软也小小的警告了一下，我可以让你黑屏，就可以让你死机，窜改文件，甚至直接毁坏硬件。
                            但是，我对全世界不懈对微软的垄断作斗争的黑客同志们有信心。君不见，现在所谓的破解已经到处都是。仅凭那几百几千程序员就可以和全世界的人民做对吗？所谓五年不会有盗版的蓝光不也被破解了吗？
                            以后的软件都会走向开源化，免费化。这是历史发展的必然规律。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1986481,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1986481">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1986481,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1986481);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31986481">
                            </div>
                            <div id="Reply1986481" class="replydiv">
                            </div>
                            <div id="AxajTip21986481">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方77辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-23 09:38:40
                        </dd>
                        <dd class="oDetail">
                            对我来说。WINDOWS只是一个平台，能运行软件，我能在上面跟许多朋友一起。。最重要的是，我身边的人都用WINDOWS。。<br />
                            <br />
                            如果没有WONDOWS。。用其他的我也能接受。。只要公司同意全部安装LINUX我也马上换。。一切因为工作需要
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1983874,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1983874">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1983874,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1983874);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31983874">
                            </div>
                            <div id="Reply1983874" class="replydiv">
                            </div>
                            <div id="AxajTip21983874">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方78辩：i 梦少爷 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-23 01:05:18
                        </dd>
                        <dd class="oDetail">
                            你会花几百块去买一张壁纸吗？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1983065,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1983065">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1983065,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1983065);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31983065">
                            </div>
                            <div id="Reply1983065" class="replydiv">
                            </div>
                            <div id="AxajTip21983065">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方79辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 22:07:18
                        </dd>
                        <dd class="oDetail">
                            难以达到哦~<br />
                            治标不治本……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1982654,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1982654">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1982654,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1982654);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31982654">
                            </div>
                            <div id="Reply1982654" class="replydiv">
                            </div>
                            <div id="AxajTip21982654">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方80辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 19:55:31
                        </dd>
                        <dd class="oDetail">
                            用技术手段来反盗版只是徒劳而已。<br />
                            这个观点是对的。技术手段总可以被破解掉。<br />
                            想要改变盗版率居高不下的现状，微软有责任。（早期放纵盗版和在中国的定价）每一个用户也有责任。（没有意识到盗版的严重性。）
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1982223,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1982223">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1982223,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1982223);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31982223">
                            </div>
                            <div id="Reply1982223" class="replydiv">
                            </div>
                            <div id="AxajTip21982223">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方81辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 19:05:41
                        </dd>
                        <dd class="oDetail">
                            这样弄只能迫使那些盗版的去用破解版的，估计不回有多少人因为黑屏而去买微软正版
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1982027,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1982027">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1982027,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1982027);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31982027">
                            </div>
                            <div id="Reply1982027" class="replydiv">
                            </div>
                            <div id="AxajTip21982027">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方82辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 15:32:43
                        </dd>
                        <dd class="oDetail">
                            不能! 用技术手段来反盗版只是徒劳而已。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1981287,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1981287">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1981287,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1981287);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31981287">
                            </div>
                            <div id="Reply1981287" class="replydiv">
                            </div>
                            <div id="AxajTip21981287">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方83辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 12:17:17
                        </dd>
                        <dd class="oDetail">
                            即使对一部分人奏效了<br />
                            <br />
                            能保证所有盗版用户都吃你这一招么<br />
                            <br />
                            省省吧微软
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1980587,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1980587">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1980587,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1980587);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31980587">
                            </div>
                            <div id="Reply1980587" class="replydiv">
                            </div>
                            <div id="AxajTip21980587">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方84辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 10:17:14
                        </dd>
                        <dd class="oDetail">
                            绝对不可能,这个微软自己也知道,可供用户自行选择安装,不强制性这个就是最好的证明,搞这个出来只是给自己好下台而已..
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979915,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979915">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979915,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979915);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979915">
                            </div>
                            <div id="Reply1979915" class="replydiv">
                            </div>
                            <div id="AxajTip21979915">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方85辩：yy11ll12 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:48:57
                        </dd>
                        <dd class="oDetail">
                            肯定不能，微软的高调推出补丁并不能阻止什么，原因很简单，这样的补丁可以随时推出，为什么要告诉我们用户是10月20号推出呢，他无非是提醒我们用户，要我们有所准备，所以，我认为微软只是在故弄玄虚……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979725,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979725">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979725,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979725);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979725">
                            </div>
                            <div id="Reply1979725" class="replydiv">
                            </div>
                            <div id="AxajTip21979725">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方86辩：白皮 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:44:50
                        </dd>
                        <dd class="oDetail">
                            以中国人现在的平均收入，个人用户根本就用不起正版软件，你还想怎么样？难道说是情愿肚子饿着了，也要用正版，还是为了肚子不饿，别说正版，就是没电脑用也得吃饭，所以就现在中国人的收入来看，吃饭比正版重要
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979691,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979691">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979691,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979691);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979691">
                            </div>
                            <div id="Reply1979691" class="replydiv">
                            </div>
                            <div id="AxajTip21979691">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方87辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:41:01
                        </dd>
                        <dd class="oDetail">
                            光骂有什么用？!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979249,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979249">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979249,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979249);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979249">
                            </div>
                            <div id="Reply1979249" class="replydiv">
                            </div>
                            <div id="AxajTip21979249">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方88辩：CaesarZX </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 03:35:17
                        </dd>
                        <dd class="oDetail">
                            中国人什么大风大浪没见过？以为这么点小伎俩就能改变中国人如此根深蒂固的丑陋思想么？用法律手段要比技术手段更有效。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978904,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978904">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978904,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978904);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978904">
                            </div>
                            <div id="Reply1978904" class="replydiv">
                            </div>
                            <div id="AxajTip21978904">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方89辩：米仔 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 02:01:42
                        </dd>
                        <dd class="oDetail">
                            真是折腾了我们老百姓!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978870,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978870">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978870,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978870);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978870">
                            </div>
                            <div id="Reply1978870" class="replydiv">
                            </div>
                            <div id="AxajTip21978870">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方90辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 00:57:21
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    不是可以选择不装么？这只是给装了正版的人的安慰，花那么多钱， 总要有点说法吧!
                                </div>
                            </fieldset>
                            同意!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978805,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978805">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978805,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978805);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978805">
                            </div>
                            <div id="Reply1978805" class="replydiv">
                            </div>
                            <div id="AxajTip21978805">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方91辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:31:04
                        </dd>
                        <dd class="oDetail">
                            不能，因为这样的技术在以前已经用过啦。但是还是有解决办法，所以它的目的没有达到。我可以找正版盗版XP装!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978671,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978671">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978671,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978671);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978671">
                            </div>
                            <div id="Reply1978671" class="replydiv">
                            </div>
                            <div id="AxajTip21978671">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方92辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:12:48
                        </dd>
                        <dd class="oDetail">
                            涉嫌垄断，等着国家处罚吧
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978621,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978621">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978621,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978621);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978621">
                            </div>
                            <div id="Reply1978621" class="replydiv">
                            </div>
                            <div id="AxajTip21978621">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方93辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:58:13
                        </dd>
                        <dd class="oDetail">
                            那么高的价格! 文明用语着人们用盗版。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978593,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978593">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978593,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978593);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978593">
                            </div>
                            <div id="Reply1978593" class="replydiv">
                            </div>
                            <div id="AxajTip21978593">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方94辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:50:24
                        </dd>
                        <dd class="oDetail">
                            这是一种即成的事实.大家无法改变.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978571,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978571">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978571,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978571);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978571">
                            </div>
                            <div id="Reply1978571" class="replydiv">
                            </div>
                            <div id="AxajTip21978571">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方95辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:48:19
                        </dd>
                        <dd class="oDetail">
                            一普通用户：用了盗版vista都还卡，vista不好用! XP好用，但就要黑屏了，piapia~不得不用正版XP。<br />
                            所以XP Pro销量大增……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978565,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978565">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978565,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978565);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978565">
                            </div>
                            <div id="Reply1978565" class="replydiv">
                            </div>
                            <div id="AxajTip21978565">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方96辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:55:08
                        </dd>
                        <dd class="oDetail">
                            反方4辨，支持下~<br />
                            <br />
                            还有，如果中国有系统，而且价格，我不会考虑的。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978416,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978416">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978416,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978416);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978416">
                            </div>
                            <div id="Reply1978416" class="replydiv">
                            </div>
                            <div id="AxajTip21978416">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方97辩：Lyon </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:20:30
                        </dd>
                        <dd class="oDetail">
                            反盗版就如同反病毒软件，用技术来防止盗版永远都处于被动，总会被击破的。而国内用户使用盗版多是因为经济原因，只有降低软件在国内的售价，或是从立法等方面入手才能比较有效控制。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978343,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978343">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978343,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978343);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978343">
                            </div>
                            <div id="Reply1978343" class="replydiv">
                            </div>
                            <div id="AxajTip21978343">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方98辩：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:05:54
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    <fieldset class="feedBack">
                                        <legend class="fb_title">引用jackying的评论:</legend>
                                        <div class="fb_content">
                                            中国人，喜欢 免费使用正版软件。</div>
                                    </fieldset>
                                    你没有付费怎么能说使用的是正版软件呢</div>
                            </fieldset>
                            ....<br />
                            <br />
                            很遗憾的告诉你<br />
                            <br />
                            Avast! 家用版正版免费，比Rising要好n倍<br />
                            <br />
                            小红伞，只要不是文明用语都知道是啥 WPS 很多正版软件，都是免费的!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978296,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978296">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978296,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978296);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978296">
                            </div>
                            <div id="Reply1978296" class="replydiv">
                            </div>
                            <div id="AxajTip21978296">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方99辩：曾旭 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:23:37
                        </dd>
                        <dd class="oDetail">
                            这仅仅是他们的第一部而已，以前它为了占领中国庞大的市场，根本不敢打击，现在是觉得时机以到了先来个探温技
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978174,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978174">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978174,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978174);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978174">
                            </div>
                            <div id="Reply1978174" class="replydiv">
                            </div>
                            <div id="AxajTip21978174">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">反方100辩：justinhau </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:09:31
                        </dd>
                        <dd class="oDetail">
                            微软不和天朝联合，休想通过技术软件来反中国的盗版。。。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978128,2,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978128">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978128,67605,2);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978128);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978128">
                            </div>
                            <div id="Reply1978128" class="replydiv">
                            </div>
                            <div id="AxajTip21978128">
                            </div>
                        </dd>
                    </dl>
                    <div id="news-bottom0">
                        <div id="news-bottom-left0">
                            <div id="news-bottom-list0">
                                <span>上一页</span>[<strong><span>1</span></strong>] [<a href="#ncomment" onclick="javascript:Ncomment2('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=2','replyr')">2</a>]
                                [<a href="#ncomment" onclick="javascript:Ncomment2('POST','/acomment.php?pageID=3&amp;sid=67605&amp;type=2','replyr')">3</a>]
                                <a href="#ncomment" onclick="javascript:Ncomment2('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=2','replyr')">
                                    下一页</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- other Opinion  -->
            <div id="otherOpinion">
                <div id="othHead">
                </div>
                <div id="posth">
                    <dl>
                        <div class="Content">
                            <div class="row">
                                <label>
                                    评论主题:</label><input id="subject3" class="input" name="nowsubject" type="text" value="Re:微软的目的能否达到？" /></div>
                            <div class="row">
                                <label>
                                    您的大名:</label><input id="name3" class="input" name="nowname" type="text" />
                                <input id="type3" name="nowtype" type="hidden" value="3" />
                            </div>
                            <div class="row">
                                <label>
                                    您的主页:</label><input id="page3" class="input" name="nowpage" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的邮箱:</label><input id="email3" class="input" name="nowemail" type="text" /></div>
                            <div class="row">
                                <label>
                                    您的评论:</label><textarea id="comment3" cols="20" name="comment" onfocus="_Showvaldiv(3);"
                                        rows="1"></textarea></div>
                            <div id="valdiv3" class="row" style="display: none">
                                <label>
                                    验证码:</label><input id="valimg3" class="input" name="valimg" style="width: 40px" type="text" /><img
                                        id="safecode3" align="absBottom" alt="更换一张验证码图片" border="0" name="safecode" onclick="reloadcode(3);"
                                        src="" />
                                [<a href="javascript:reloadcode(3);">刷新验证码</a>]</div>
                            <div id="AxajTip3" class="AxajTip">
                            </div>
                            <span class="row" style="text-align: center">
                                <input align="top" onclick="_postReply(3,67605,3)" src="http://www.cnbeta.com/images/argue_btn_other.png"
                                    type="image" />
                            </span>
                            <div id="AxajTip23">
                            </div>
                            <div id="AxajTip33">
                            </div>
                        </div>
                    </dl>
                </div>
                <div id="textloading3" style="line-height: 100%; background-color: #ff0000; display: none;
                    float: left; height: 10px; color: white">
                </div>
                <div id="replyh">
                    <dl>
                        <dt class="oTitle">第1楼：微醺熊猫 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:52:24
                        </dd>
                        <dd class="oDetail">
                            黑屏事件，充分暴露了微软在中国拓展媒体行业的野心~<br />
                            <br />
                            <br />
                            <br />
                            微软黑屏是为微软广告传播公司做准备<br />
                            <br />
                            这次黑屏，虽然还没听说有谁黑 但是普遍在中国大陆的广告主心里埋下信息：用户的桌面图片，微软是可以控制的! ! 这也就是原来比尔盖茨鼓励大家购买盗版windows的重要原因：
                            只要我垄断，我不是软件公司，而是一个媒体公司! 什么CCTV、新浪、分众…… 你们都靠边…… 我控制的不是网民，不是电视一族，而是几亿的电脑屏幕 腾讯、google之流也不用再吹嘘你们的精准投放，有多牛了……
                            微软桌面广告投放比你们更精准…… 要么高价正版，要么接受有广告的免费版…… 共享软件已然如此 微软为何不能走上这条康庄大道 或许免费版的WINDOWS 7 就在不久以后……
                            我们付出的也只是几个小时的桌面而已……
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974460,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974460">75</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974460,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974460);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974460">
                            </div>
                            <div id="Reply1974460" class="replydiv">
                            </div>
                            <div id="AxajTip21974460">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第2楼：theeagles </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:58:46
                        </dd>
                        <dd class="oDetail">
                            微软独在中国使这一招，狠毒至极。但是道高一尺魔高一丈嘛，中国人这么“聪明”，总有办法的。<br />
                            是“聪明”还是短见？不把力气放在研究推广扶持自己的东西上，反而走“捷径”，抄袭，偷窃别人的劳动成果，短见啊! 最终受害的还是短见的中国人啊!
                            <br />
                            现在可好，你离不开人家的东西了，这东西不见得就好到哪里去了，要命的是你已经习惯它了，形成依赖了。现在只能任其摆布了。你不干，微软还有更狠的招没使呢!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974526,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974526">31</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974526,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974526);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974526">
                            </div>
                            <div id="Reply1974526" class="replydiv">
                            </div>
                            <div id="AxajTip21974526">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第3楼：天毅 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:03:06
                        </dd>
                        <dd class="oDetail">
                            微软什么目的暂且不说，微软能否达到目的暂且不说，我要给各位提醒一下，人要学会尊重别人，用了人家的东西还在骂别人，才是无耻的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974554,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974554">28</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974554,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974554);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974554">
                            </div>
                            <div id="Reply1974554" class="replydiv">
                            </div>
                            <div id="AxajTip21974554">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第4楼：36963 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:53:38
                        </dd>
                        <dd class="oDetail">
                            用盗版是因为正版的XP太过于臃肿! 手上有正版的XP也有正版的Office，但还是会装精减的所谓盗版的XP&amp;Office，原因就是不爽微软做的肥肥的东西!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974472,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974472">14</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974472,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974472);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974472">
                            </div>
                            <div id="Reply1974472" class="replydiv">
                            </div>
                            <div id="AxajTip21974472">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第5楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:30:54
                        </dd>
                        <dd class="oDetail">
                            我觉得中国应该从娃娃抓起，狠狠推广Linux，并督促一些软件厂商跟进Linux软件的开发。<br />
                            <br />
                            现在的Ubuntu已经非常好用了，希望能得到中国网民的支持。有网民的支持，软件厂商就不敢忽略它。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975281,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975281">13</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975281,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975281);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975281">
                            </div>
                            <div id="Reply1975281" class="replydiv">
                            </div>
                            <div id="AxajTip21975281">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第6楼：钻石王小 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:35:30
                        </dd>
                        <dd class="oDetail">
                            不过的确是给普通用户提醒了.微软的东西不是全免费的..当然,盗版的用户永远都是存在的,问题是,我们是不是永远都是用盗版的人?当一般用户经济水平或者应用水平达到一个层级的时候,自然就必须或者不刻避免的成为正版用户,就好像10％的QQ用户会选择付费的会员服务一样,但是剩下90％的基础必须存在的.当原子的能量达到一定水平,就会发生能级跃迁,所以,微软该敲打盗版用户的时候,是微软该做的,就好像加热一样,促进能级跃迁,但是停止加热的时候,这些原子又会跃迁回原来的能级,要让所有的原子都激发,还是得等大环境的全部能级的提高.故,微软的举动,实属正常行为,大家不必担心.该怎么生活还怎么生活.盗版的问题,最终不会成为问题的.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975771,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975771">11</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975771,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975771);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975771">
                            </div>
                            <div id="Reply1975771" class="replydiv">
                            </div>
                            <div id="AxajTip21975771">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第7楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:04:34
                        </dd>
                        <dd class="oDetail">
                            希望技术手段再强悍一点, 这个黑屏太弱了, 一下下就破解了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974567,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974567">10</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974567,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974567);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974567">
                            </div>
                            <div id="Reply1974567" class="replydiv">
                            </div>
                            <div id="AxajTip21974567">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第8楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:49:44
                        </dd>
                        <dd class="oDetail">
                            降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974440,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974440">10</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974440,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974440);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974440">
                            </div>
                            <div id="Reply1974440" class="replydiv">
                            </div>
                            <div id="AxajTip21974440">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第9楼：shutdot </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:02:02
                        </dd>
                        <dd class="oDetail">
                            对于中国国情，降价才是王道!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974547,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974547">9</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974547,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974547);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974547">
                            </div>
                            <div id="Reply1974547" class="replydiv">
                            </div>
                            <div id="AxajTip21974547">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第10楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:53:06
                        </dd>
                        <dd class="oDetail">
                            我觉得微软应该再狠点儿，盗版的不能登录，登录后提示一下就关机。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974468,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974468">9</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974468,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974468);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974468">
                            </div>
                            <div id="Reply1974468" class="replydiv">
                            </div>
                            <div id="AxajTip21974468">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第11楼：... </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:03:52
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价降价</div>
                            </fieldset>
                            降什么价! !
                            <br />
                            <br />
                            免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费!
                            免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费!
                            免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费!
                            免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费!
                            免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费! 免费!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978442,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978442">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978442,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978442);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978442">
                            </div>
                            <div id="Reply1978442" class="replydiv">
                            </div>
                            <div id="AxajTip21978442">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第12楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:35:44
                        </dd>
                        <dd class="oDetail">
                            如果此举能使国产操作系统繁荣,我建议给微软中国发个一吨重的奖章!!!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974859,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974859">7</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974859,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974859);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974859">
                            </div>
                            <div id="Reply1974859" class="replydiv">
                            </div>
                            <div id="AxajTip21974859">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第13楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:31:11
                        </dd>
                        <dd class="oDetail">
                            黑屏不能解决问题，验证没有通过应该直接无法登录，然后马上关机，这样才吓倒很多人。总是不明白，为什么gov不能像Russian一样在全国所有学校全面安装Linux，我们从小学到大学清一色的盗版Windows，我们的命运被MS掌握了，MS想什么时候黑你就什么时候黑你，我们的悲哀~~我们还在反反盗版，窃书不算偷书，中国人的事能算盗版么？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974810,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974810">6</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974810,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974810);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974810">
                            </div>
                            <div id="Reply1974810" class="replydiv">
                            </div>
                            <div id="AxajTip21974810">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第14楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:52:19
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用36963的评论:</legend>
                                <div class="fb_content">
                                    用盗版是因为正版的XP太过于臃肿! 手上有正版的XP也有正版的Office，但还是会装精减的所谓盗版的XP&amp;Office，原因就是不爽微软做的肥肥的东西！...</div>
                            </fieldset>
                            那你真是文明用语! 有正版的不用，你以为精简版好啊，嫌臃肿你用DOS啊。有一个装B的! ! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976258,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976258">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976258,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976258);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976258">
                            </div>
                            <div id="Reply1976258" class="replydiv">
                            </div>
                            <div id="AxajTip21976258">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第15楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:04:42
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    如果买得起就可能买正版的，让微软降价。</div>
                            </fieldset>
                            你装修过房子没,看过水龙头的价钱没?一个水龙头都可以比一套正版XP贵.嫌贵,是相对盗版说的,不管价钱是多少,和零比总是会嫌贵的.那对于这些人来说多少价格是合适的呢?对于用惯了零价位的人来说,也只有约等于零的价位才是合理的.包括我自己在内,其实是能省则省.但我敢于承认这样是不好的.也不会大力宣扬说这样是好的.自己默默的用就是了.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974570,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974570">5</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974570,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974570);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974570">
                            </div>
                            <div id="Reply1974570" class="replydiv">
                            </div>
                            <div id="AxajTip21974570">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第16楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:48:19
                        </dd>
                        <dd class="oDetail">
                            我认为windows的价格很合理。一套杀软50的开发团队几个月时间就可以完成，价格定为99元。一套操作系统1000人的开发团队年时间才完成如果单单只按人员成本来算windows的价格应该定为99*40&gt;2999（vista
                            ultimate版本售价），很合理嘛
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975431,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975431">4</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975431,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975431);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975431">
                            </div>
                            <div id="Reply1975431" class="replydiv">
                            </div>
                            <div id="AxajTip21975431">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第17楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:06:13
                        </dd>
                        <dd class="oDetail">
                            你知道微软的真正目的么?<br />
                            <br />
                            不知道的话 还辩文明用语啊!<br />
                            <br />
                            不要自己想当然了!!!<br />
                            <br />
                            用盗版本来就是对软件开发者的劳动成果的无视,既然买不起,用了盗版,那就不要那么嚣张,还大声叫嚷,那就是你人品和素质的问题
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974587,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974587">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974587,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974587);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974587">
                            </div>
                            <div id="Reply1974587" class="replydiv">
                            </div>
                            <div id="AxajTip21974587">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第18楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:46:02
                        </dd>
                        <dd class="oDetail">
                            如果买得起就可能买正版的，让微软降价。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974414,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974414">3</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974414,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974414);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974414">
                            </div>
                            <div id="Reply1974414" class="replydiv">
                            </div>
                            <div id="AxajTip21974414">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第19楼：黑羽恨长 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:15:54
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    我觉得微软应该再狠点儿，盗版的不能登录，登录后提示一下就关机。</div>
                            </fieldset>
                            不能登陆 还登陆后提示关机 你有点逻辑好不好
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976957,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976957">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976957,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976957);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976957">
                            </div>
                            <div id="Reply1976957" class="replydiv">
                            </div>
                            <div id="AxajTip21976957">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第20楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:22:04
                        </dd>
                        <dd class="oDetail">
                            用盗版的都还这么嚣张，无语了。。<br />
                            <br />
                            微软没来狠的都够意思了。。。给你个黑屏吓吓你们。。看你们谁还敢去说他垄断。。。<br />
                            <br />
                            别指望全中国人民都会去用Linux。那是空想。。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976080,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976080">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976080,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976080);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976080">
                            </div>
                            <div id="Reply1976080" class="replydiv">
                            </div>
                            <div id="AxajTip21976080">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第21楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:18:00
                        </dd>
                        <dd class="oDetail">
                            linux的机会越来越大了.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975194,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975194">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975194,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975194);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975194">
                            </div>
                            <div id="Reply1975194" class="replydiv">
                            </div>
                            <div id="AxajTip21975194">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第22楼：CADE </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:10:17
                        </dd>
                        <dd class="oDetail">
                            我只想说 要是嫌正版软件贵你可以选择免费的<br />
                            <br />
                            什么?不好用?你也可以自己开发啊,怎么好用怎么开发...<br />
                            <br />
                            某些人不是说正版软件成本低么?自己开发一个试试
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975133,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975133">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975133,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975133);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975133">
                            </div>
                            <div id="Reply1975133" class="replydiv">
                            </div>
                            <div id="AxajTip21975133">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第23楼：清廉战士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:49:24
                        </dd>
                        <dd class="oDetail">
                            抛开可以不可以,只想对某些砖夹叫兽律师精英说一句:人无耻到你们这个地步也真是难得了!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974970,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974970">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974970,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974970);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974970">
                            </div>
                            <div id="Reply1974970" class="replydiv">
                            </div>
                            <div id="AxajTip21974970">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第24楼：Love Hebe </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:46:56
                        </dd>
                        <dd class="oDetail">
                            微软的一些列行为，说是故意惩罚也好，说是变相推广Vista也罢，这一切的前提都是因为中国针对微软的盗版现象太过严重和明显。当人家撒网的时候我们都盲目的往里面游。现在当我们离不开微软的东西的时候人家就开始收网了。<br />
                            <br />
                            1.我们要是开发自己的操作系统，个人认为难度比较大，尤其是中国这样的国情下<br />
                            <br />
                            2.让微软降价的可能性不是没有，但是也只可能是很小的幅度<br />
                            <br />
                            3.即使降价了，但是最广大的用户还是会习惯使用盗版，因为在中国你很难养成使用正版的习惯 这究竟是为什么呢？今天是微软，也许明天会是其他的公司呢？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974945,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974945">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974945,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974945);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974945">
                            </div>
                            <div id="Reply1974945" class="replydiv">
                            </div>
                            <div id="AxajTip21974945">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第25楼：daokr </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:22:48
                        </dd>
                        <dd class="oDetail">
                            微软的目的达到没有我不知道，但我知道C-B的目的是达到了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974732,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974732">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974732,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974732);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974732">
                            </div>
                            <div id="Reply1974732" class="replydiv">
                            </div>
                            <div id="AxajTip21974732">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第26楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:13:49
                        </dd>
                        <dd class="oDetail">
                            不一定是绝对,但是起到提示作用, 因为很多人都不知道操作系统这个东西.只会用用,更不会知道原来操作系统还要花几百块去买的~
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974668,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974668">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974668,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974668);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974668">
                            </div>
                            <div id="Reply1974668" class="replydiv">
                            </div>
                            <div id="AxajTip21974668">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第27楼：无聊 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:56:39
                        </dd>
                        <dd class="oDetail">
                            用个系统而已怎么总会搞得那么复杂？多一点知识完全就犯不着担心这个和那个。用XP VOL的＋一个VLK不就可以搞定一切吗？用了这么多年从来不用担心微软的正版认证，什么正版盗版通通与我无关。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974506,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974506">2</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974506,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974506);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974506">
                            </div>
                            <div id="Reply1974506" class="replydiv">
                            </div>
                            <div id="AxajTip21974506">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第28楼：wuwu </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 21:12:54
                        </dd>
                        <dd class="oDetail">
                            今天我的黑屏了<br />
                            <br />
                            仔细一查，是显示器线松了<br />
                            <br />
                            后来我还发现了，别人的盗版的都一小时黑一次屏，然后大家就能休息一下眼睛，活动活动身体，我感觉微软的设计真的非常人性化，所以我就把自己用的正版卸载了，换盗版的了<br />
                            <br />
                            太人性化了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1982505,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1982505">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1982505,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1982505);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31982505">
                            </div>
                            <div id="Reply1982505" class="replydiv">
                            </div>
                            <div id="AxajTip21982505">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第29楼：xanga </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:49:17
                        </dd>
                        <dd class="oDetail">
                            Mac os才是王道
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977376,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977376">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977376,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977376);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977376">
                            </div>
                            <div id="Reply1977376" class="replydiv">
                            </div>
                            <div id="AxajTip21977376">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第30楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:53:27
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用Leung Loh的评论:</legend>
                                <div class="fb_content">
                                    現在電腦便宜了。去買一個品牌電腦，然後從網上Down一個OEM版的XP，完全不用擔心激活問題。辦公用的Office完全可以用OPenOffice來代替。</div>
                            </fieldset>
                            就是就是。<br />
                            <br />
                            OEM版多方便
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976266,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976266">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976266,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976266);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976266">
                            </div>
                            <div id="Reply1976266" class="replydiv">
                            </div>
                            <div id="AxajTip21976266">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第31楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:36:05
                        </dd>
                        <dd class="oDetail">
                            正版100块之内我能接受.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976164,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976164">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976164,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976164);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976164">
                            </div>
                            <div id="Reply1976164" class="replydiv">
                            </div>
                            <div id="AxajTip21976164">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第32楼：ziuworld </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:53:30
                        </dd>
                        <dd class="oDetail">
                            多么无聊的辩题。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975887,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975887">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975887,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975887);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975887">
                            </div>
                            <div id="Reply1975887" class="replydiv">
                            </div>
                            <div id="AxajTip21975887">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第33楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 11:20:45
                        </dd>
                        <dd class="oDetail">
                            纯粹是炒作! 提前这么久告诉你，就是让你有“准备”! 如果要杀你，直接封杀就可以了!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975673,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975673">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975673,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975673);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975673">
                            </div>
                            <div id="Reply1975673" class="replydiv">
                            </div>
                            <div id="AxajTip21975673">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第34楼：Leung Loh </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 10:09:06
                        </dd>
                        <dd class="oDetail">
                            現在電腦便宜了。去買一個品牌電腦，然後從網上Down一個OEM版的XP，完全不用擔心激活問題。辦公用的Office完全可以用OPenOffice來代替。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1975125,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1975125">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1975125,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1975125);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31975125">
                            </div>
                            <div id="Reply1975125" class="replydiv">
                            </div>
                            <div id="AxajTip21975125">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第35楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:08:18
                        </dd>
                        <dd class="oDetail">
                            不好说，其它系统大家只要熟悉下还是可以转移过去的，但是目前要使用网银的话，肯定不能摆脱windows。这应该才是微软最狠的一招
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974609,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974609">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974609,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974609);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974609">
                            </div>
                            <div id="Reply1974609" class="replydiv">
                            </div>
                            <div id="AxajTip21974609">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第36楼：QQ82735078 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:06:58
                        </dd>
                        <dd class="oDetail">
                            小题大做贩?#27809;什么事的! 宣传方式<br />
                            <br />
                            担心下猪肉的价格更实际贩?/dd&gt;
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974591,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974591">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974591,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974591);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974591">
                            </div>
                            <div id="Reply1974591" class="replydiv">
                            </div>
                            <div id="AxajTip21974591">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第37楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:04:31
                        </dd>
                        <dd class="oDetail">
                            微软想要在中国市场获利，必须考虑中国的国情，在销售上采用怀柔政策（如果降价对微软来说是很难做到的话）。比如安装使用免费，使用增值服务再另外收费。单纯利用技术手段暴力反DB，中国人不答应，微软虽然可以吓唬（注意是吓唬，不是自愿）到一部分初级用户改用正版，可是长远来说是两败俱伤的局面。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974566,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974566">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974566,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974566);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974566">
                            </div>
                            <div id="Reply1974566" class="replydiv">
                            </div>
                            <div id="AxajTip21974566">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第38楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 09:02:16
                        </dd>
                        <dd class="oDetail">
                            如果说微软的目的只是如果微软自己说的那样，为了让盗版用户知道自己的系统是盗版的，那么可以达到它的目的（当然不一定要接受它的正版验证通知：自以为自己的系统是正版，其实却是盗版的人可以通过WGA得到确认，而知道自己使用盗版的用户不管是否接受WGA，都知道自己的系统是盗版的）；<br />
                            <br />
                            如果说微软想以此来打击盗版，如上所述，效果不大，因为使用盗版的用户基本上都是明明知道是盗版而仍然在使用的，究其原因，并不能用一两个方面就能说明，而正版系统太贵，无疑是不可回避的重要原因之一。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974549,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974549">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974549,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974549);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974549">
                            </div>
                            <div id="Reply1974549" class="replydiv">
                            </div>
                            <div id="AxajTip21974549">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第39楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:57:32
                        </dd>
                        <dd class="oDetail">
                            天朝开发不逊于xp的操作系统吧 我保证用
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974515,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974515">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974515,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974515);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974515">
                            </div>
                            <div id="Reply1974515" class="replydiv">
                            </div>
                            <div id="AxajTip21974515">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第40楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:55:23
                        </dd>
                        <dd class="oDetail">
                            这个要从根本来决绝 从小学到 大学 所有学校的教学平台换成linux 不然从小用win长大 长大了 没办法 只有破财免灾 如果这是战时 如果他不是让你黑屏 是让你不能瘫痪
                            或者偷偷的 窃取你的 资料 信息安全问题
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974492,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974492">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974492,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974492);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974492">
                            </div>
                            <div id="Reply1974492" class="replydiv">
                            </div>
                            <div id="AxajTip21974492">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第41楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:54:58
                        </dd>
                        <dd class="oDetail">
                            根据国内反盗版的状况，微软这招能达到的也只是狼来了的效果! 开始可能会有普通人“上当”，到最后谁都不会相信!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974488,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974488">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974488,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974488);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974488">
                            </div>
                            <div id="Reply1974488" class="replydiv">
                            </div>
                            <div id="AxajTip21974488">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第42楼：xiao3 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:54:55
                        </dd>
                        <dd class="oDetail">
                            dou yi yang
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974487,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974487">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974487,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974487);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974487">
                            </div>
                            <div id="Reply1974487" class="replydiv">
                            </div>
                            <div id="AxajTip21974487">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第43楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:52:24
                        </dd>
                        <dd class="oDetail">
                            一听说黑屏的事就赶紧检查客户电脑。至今没发现一个黑屏。有人见过黑屏的电脑吗？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974461,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974461">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974461,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974461);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974461">
                            </div>
                            <div id="Reply1974461" class="replydiv">
                            </div>
                            <div id="AxajTip21974461">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第44楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 08:45:04
                        </dd>
                        <dd class="oDetail">
                            肯定不能!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1974406,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1974406">1</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1974406,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1974406);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31974406">
                            </div>
                            <div id="Reply1974406" class="replydiv">
                            </div>
                            <div id="AxajTip21974406">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第45楼：小小心心 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-24 19:48:09
                        </dd>
                        <dd class="oDetail">
                            黑屏纯属宣传而已，就没想的怎么怎么样，想尽办法都会让破解，不如找个策略让大家注意一下! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1990880,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1990880">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1990880,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1990880);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31990880">
                            </div>
                            <div id="Reply1990880" class="replydiv">
                            </div>
                            <div id="AxajTip21990880">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第46楼：Park </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-23 12:38:59
                        </dd>
                        <dd class="oDetail">
                            拜托，WinVistaSP1在最开始就是对盗版黑屏的! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1984794,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1984794">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1984794,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1984794);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31984794">
                            </div>
                            <div id="Reply1984794" class="replydiv">
                            </div>
                            <div id="AxajTip21984794">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第47楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 10:36:51
                        </dd>
                        <dd class="oDetail">
                            上班用正版,下班用盗版,在中国白天做人.晚上做兽.哈哈
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1980058,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1980058">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1980058,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1980058);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31980058">
                            </div>
                            <div id="Reply1980058" class="replydiv">
                            </div>
                            <div id="AxajTip21980058">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第48楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:53:32
                        </dd>
                        <dd class="oDetail">
                            利益之争 MS只不过想用些手段让更多的人用正版的 他应该知道不可能把盗版一网打尽 ，就像白天和晚上.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979762,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979762">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979762,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979762);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979762">
                            </div>
                            <div id="Reply1979762" class="replydiv">
                            </div>
                            <div id="AxajTip21979762">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第49楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:24:14
                        </dd>
                        <dd class="oDetail">
                            知识版权应该尊重，但微软在市场属于垄断，缺乏竞争对手，价钱虚高，降价才是特高正版普及率的正确手段。当然利用技术手段打击盗版也未尝不可。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979550,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979550">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979550,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979550);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979550">
                            </div>
                            <div id="Reply1979550" class="replydiv">
                            </div>
                            <div id="AxajTip21979550">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第50楼：sh-jacky </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 09:03:27
                        </dd>
                        <dd class="oDetail">
                            项庄舞剑，意在沛公! 打击XP盗版为了VISTA，打击MS OFF2003，为了OFF2007。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979402,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979402">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979402,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979402);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979402">
                            </div>
                            <div id="Reply1979402" class="replydiv">
                            </div>
                            <div id="AxajTip21979402">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第51楼：M2 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:57:54
                        </dd>
                        <dd class="oDetail">
                            微软看似维权的声讨，将使得“软件版权”这块让人“又要当什么，又要立什么”无厘头要求的巨大尘埃最终落定。小虫浅析以为，国人OS用户的“分裂”将成为本次动作的第一效应，即正方、反方、第三方，恰如本帖。再者，鉴于微软的垄断地位，反方与第三方必将逐渐势微。最后，OS真人版的“帝国反击战”将于某日如期上演。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979372,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979372">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979372,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979372);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979372">
                            </div>
                            <div id="Reply1979372" class="replydiv">
                            </div>
                            <div id="AxajTip21979372">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第52楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:44:12
                        </dd>
                        <dd class="oDetail">
                            果然，Windows 7之后的又一热门话题。直到前天还有人在那里骂呢，不过后来出现了支持微软的帖子，同意这种说法：用盗版就不要那么大声。嗯，也是啊，偷用别人的东西（也不一定，有的应该也是不知情的被害者），购买非法的来用，还引以为豪？!
                            不过，也觉得国内的人有这种反响是必然的。其实，我也没有资格在这里多加评论的，自己还不是到处找歌下载，说坏了我也是盗版的支持者。在一种文化下，人人都是一样的话，就没有正反了，你不下，全国上下那么多人下的如火如荼，还不是一样？所以呢，这次的盗版事件，还是眼不见为净，反正我也不是XP。其实黑屏不影响你的啊，就是每天都喜欢的：换壁纸，微软很好了，没有封你号，没有砍你文档，也没有多收你钱，反而给你一个随意可卸载的提醒&amp;
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979282,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979282">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979282,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979282);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979282">
                            </div>
                            <div id="Reply1979282" class="replydiv">
                            </div>
                            <div id="AxajTip21979282">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第53楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:27:34
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    微软想要在中国市场获利，必须考虑中国的国情，在销售上采用怀柔政策（如果降价对微软来说是很难做到的话）。比如安装使用免费，使用增值服务再另外收费。单纯利用技术手段暴力反DB，中国人不答应，微软虽然可以吓唬（注意是吓唬，不是自愿）到一部分初级用户改用正版，可是长远来说是两败俱伤的局面。</div>
                            </fieldset>
                            站着说话不腰疼。自己算算赚增值服务的钱能收回成本么。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979157,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979157">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979157,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979157);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979157">
                            </div>
                            <div id="Reply1979157" class="replydiv">
                            </div>
                            <div id="AxajTip21979157">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第54楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 08:20:41
                        </dd>
                        <dd class="oDetail">
                            我想微软如此作为，并不是真正的想打击盗版，而仅仅是想增加Vista的占有率而已，微软想让大家放弃XP，这也是本次行动只针对XP专业版的原因。<br />
                            <br />
                            <br />
                            <br />
                            现在的Vista家庭版仅售400多元，XP专业版要近一千!
                            <br />
                            <br />
                            对盗版来说，微软的态度应该也是：“只要他们想偷,我们希望他们偷我们的Vista,而不是XP”
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1979126,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1979126">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1979126,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1979126);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31979126">
                            </div>
                            <div id="Reply1979126" class="replydiv">
                            </div>
                            <div id="AxajTip21979126">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第55楼：DARDO </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-22 01:55:59
                        </dd>
                        <dd class="oDetail">
                            我觉得都有道理，我无所谓，纯支持CB而留言
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978862,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978862">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978862,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978862);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978862">
                            </div>
                            <div id="Reply1978862" class="replydiv">
                            </div>
                            <div id="AxajTip21978862">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第56楼：巢 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:51:29
                        </dd>
                        <dd class="oDetail">
                            黑屏对于盗版用户只是威慑而已，你只要不去下载补丁就天下太平，而且微软是明刀明枪的来，在推出补丁前就已经说明其用途，这点我们不得不承认自惭形秽。<br />
                            <br />
                            说到底，此次微软的黑屏行动就是一发恐吓弹，吓吓你而已!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978715,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978715">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978715,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978715);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978715">
                            </div>
                            <div id="Reply1978715" class="replydiv">
                            </div>
                            <div id="AxajTip21978715">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第57楼：Andy </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:41:04
                        </dd>
                        <dd class="oDetail">
                            黑屏的举措只会让中国人更加重视开源，重视Linux
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978691,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978691">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978691,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978691);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978691">
                            </div>
                            <div id="Reply1978691" class="replydiv">
                            </div>
                            <div id="AxajTip21978691">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第58楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 23:07:26
                        </dd>
                        <dd class="oDetail">
                            感觉问题的最终会追究到开源与否的问题上去 MS饭盗版当然无可厚非的 所以 你管他能否达到目的 该用免费的去免费去 该花钱的去花钱吧 总之用盗版是不对的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978611,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978611">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978611,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978611);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978611">
                            </div>
                            <div id="Reply1978611" class="replydiv">
                            </div>
                            <div id="AxajTip21978611">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第59楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:56:56
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    真没意思，我主动去微软主页验证，结果还是显示genuine。我用的大客户的号，想黑屏都不行，唉</div>
                            </fieldset>
                            真是鸟人一个
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978590,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978590">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978590,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978590);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978590">
                            </div>
                            <div id="Reply1978590" class="replydiv">
                            </div>
                            <div id="AxajTip21978590">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第60楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:38:08
                        </dd>
                        <dd class="oDetail">
                            of course not
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978536,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978536">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978536,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978536);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978536">
                            </div>
                            <div id="Reply1978536" class="replydiv">
                            </div>
                            <div id="AxajTip21978536">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第61楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:32:35
                        </dd>
                        <dd class="oDetail">
                            真没意思，我主动去微软主页验证，结果还是显示genuine。我用的大客户的号，想黑屏都不行，唉
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978519,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978519">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978519,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978519);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978519">
                            </div>
                            <div id="Reply1978519" class="replydiv">
                            </div>
                            <div id="AxajTip21978519">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第62楼：开屏的遇 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 22:10:35
                        </dd>
                        <dd class="oDetail">
                            不用开屏软件了<br />
                            <br />
                            微软直接就帮忙变桌面了，<br />
                            <br />
                            而且很酷％&gt;_<br />
                            多好的公司啊系统自带，不怕有插件，不怕有流氓软件自选安装不需要还可以通过某种方法删除
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978461,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978461">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978461,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978461);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978461">
                            </div>
                            <div id="Reply1978461" class="replydiv">
                            </div>
                            <div id="AxajTip21978461">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第63楼：guyuan </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:58:23
                        </dd>
                        <dd class="oDetail">
                            这个只能使一些人倒向开源软件<br />
                            <br />
                            Windows
                            <br />
                            msoffice
                            <br />
                            ie &lt; firefox 还有不要小看了那些捅ms py的人技术上的突破源于封锁 ms在中国的成本还是太高了，1000多的盘，基本上有点只是的都不愿意去买!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978425,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978425">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978425,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978425);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978425">
                            </div>
                            <div id="Reply1978425" class="replydiv">
                            </div>
                            <div id="AxajTip21978425">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第64楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:49:24
                        </dd>
                        <dd class="oDetail">
                            微软花这么多钱请那些年薪几十万上百万的工程师做出来的东西,难道他就没有权利在这里面加点料吗?况且对合法拥有它的人没有任何影响.当然,这对用盗版的我来说,也没有任何影响,你可以不装或装破解都无妨,完全可以当这件事没有发生,用不着这么大的反响.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978401,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978401">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978401,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978401);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978401">
                            </div>
                            <div id="Reply1978401" class="replydiv">
                            </div>
                            <div id="AxajTip21978401">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第65楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:33:53
                        </dd>
                        <dd class="oDetail">
                            不认为成功，但支持其行为!
                            <br />
                            <br />
                            本人认为这个行为不应该由WINDOWS先做，我们的监管部门都不知道去哪了。。。。<br />
                            如果有人提议用盗版就罚款，我想国家就不会有那么多盗版，我国只有两种手段。。暴力手段和罚款手段! ! 真悲哀!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978374,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978374">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978374,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978374);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978374">
                            </div>
                            <div id="Reply1978374" class="replydiv">
                            </div>
                            <div id="AxajTip21978374">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第66楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 21:08:41
                        </dd>
                        <dd class="oDetail">
                            这里究竟谁知道微软的目的何在？都在瞎咋呼，一群吃饱撑的
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978310,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978310">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978310,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978310);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978310">
                            </div>
                            <div id="Reply1978310" class="replydiv">
                            </div>
                            <div id="AxajTip21978310">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第67楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:25:43
                        </dd>
                        <dd class="oDetail">
                            无它，炫耀一下自己是垄断企业。让其他公司的枪都跳出来放点话。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978179,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978179">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978179,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978179);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978179">
                            </div>
                            <div id="Reply1978179" class="replydiv">
                            </div>
                            <div id="AxajTip21978179">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第68楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 20:14:01
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    用盗版的都还这么嚣张，无语了。。微软没来狠的都够意思了。。。给你个黑屏吓吓你们。。看你们谁还敢去说他垄断。。。别指望全中国人民都会去用Linux。那是空想。。</div>
                            </fieldset>
                            十几年前谁有想过WWW会这么火。。<br />
                            <br />
                            novell公司都想不到 = =!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978146,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978146">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978146,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978146);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978146">
                            </div>
                            <div id="Reply1978146" class="replydiv">
                            </div>
                            <div id="AxajTip21978146">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第69楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:39:10
                        </dd>
                        <dd class="oDetail">
                            从前有“国王的新衣”，现在有“微软的黑屏”
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978042,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978042">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978042,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978042);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978042">
                            </div>
                            <div id="Reply1978042" class="replydiv">
                            </div>
                            <div id="AxajTip21978042">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第70楼：ARLLY </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:33:07
                        </dd>
                        <dd class="oDetail">
                            对我没影响，我倒乐意见国产软件走出来。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1978019,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1978019">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1978019,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1978019);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31978019">
                            </div>
                            <div id="Reply1978019" class="replydiv">
                            </div>
                            <div id="AxajTip21978019">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第71楼：wean </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 19:13:54
                        </dd>
                        <dd class="oDetail">
                            我是不知道，不过昨天开了自动更新，瞪了半天还是0％，看来是微软的服务器不行，暂时还黑屏不了
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977958,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977958">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977958,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977958);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977958">
                            </div>
                            <div id="Reply1977958" class="replydiv">
                            </div>
                            <div id="AxajTip21977958">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第72楼：Ranzle.cnxdeR </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:49:19
                        </dd>
                        <dd class="oDetail">
                            河南郑州科技市场门口大文明用语手里收来3块5一张Deepin GHOST XP，内含OFFICE2003.昨日第一时间试验补丁，WGA过，OGA过，报告完毕。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977858,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977858">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977858,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977858);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977858">
                            </div>
                            <div id="Reply1977858" class="replydiv">
                            </div>
                            <div id="AxajTip21977858">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第73楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:15:56
                        </dd>
                        <dd class="oDetail">
                            达到与不达到是一说。支持微软维护正当权益。很郁闷的是，我还是在用盗版。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977768,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977768">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977768,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977768);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977768">
                            </div>
                            <div id="Reply1977768" class="replydiv">
                            </div>
                            <div id="AxajTip21977768">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第74楼：pan </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 18:00:38
                        </dd>
                        <dd class="oDetail">
                            我觉得微软只是在维护自己的正当利益，也许大家可以花几千块去买衣服鞋子或者吃饭，而不会去买正版的软件。我反正支持正版的哦，都习惯了一次性的买东西。而不习惯买了电脑还要去买软件。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977705,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977705">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977705,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977705);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977705">
                            </div>
                            <div id="Reply1977705" class="replydiv">
                            </div>
                            <div id="AxajTip21977705">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第75楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 17:33:04
                        </dd>
                        <dd class="oDetail">
                            他只是给你嘿嘿屏幕而已! 如果他真想搞你，还不是捏死一只蚂蚁那样简单! 要知道Win系统可是M$家的! 你知道人家系统多少源代码~
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977592,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977592">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977592,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977592);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977592">
                            </div>
                            <div id="Reply1977592" class="replydiv">
                            </div>
                            <div id="AxajTip21977592">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第76楼：无所事事 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 17:08:05
                        </dd>
                        <dd class="oDetail">
                            微软的目的貌似很复杂，貌似不仅仅是为了打击盗版，要是打击盗版他就应该涉及所有的系统。这次只对XP专业版，从专业版的名字貌似是打击盗版，我想是为了他的整体产品路线出发。vista在OEM上做的的确很好，但是大众的口碑的并不是很多，所以很可能为了推广他们的下一代产品。而且中国出台了垄断法，微软再次也做了准备，或许这次也是为这个做点准备。总之我感觉对付盗版很可能只是整体战略的一部分。不一定能达到预期效果。况且破解OGA的软件估计也会很快的出来。对于微软同样可以应用谷歌的评价，水土不服。他以为中国人不想用正版吗，那么高的价格，至少很多人消费不起的。虽然微软付出了N多科技人员的心血，但产品出来也是为了服务于大众，或许在中国的销售策略应该适当的改变
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977464,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977464">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977464,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977464);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977464">
                            </div>
                            <div id="Reply1977464" class="replydiv">
                            </div>
                            <div id="AxajTip21977464">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第77楼：天道无亲 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:58:37
                        </dd>
                        <dd class="oDetail">
                            难道微软要出win广告版？<br />
                            <br />
                            <br />
                            <br />
                            众所周知，中国是很喜欢免费的东西的，就像现在的免费游戏，里面推广道具。<br />
                            <br />
                            他也可以做一个免费的win，在里面散布广告啊，这广告可绝对能散布到系统的任何地方，呵呵。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977430,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977430">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977430,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977430);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977430">
                            </div>
                            <div id="Reply1977430" class="replydiv">
                            </div>
                            <div id="AxajTip21977430">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第78楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:58:25
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    我认为windows的价格很合理。一套杀软50的开发团队几个月时间就可以完成，价格定为99元。一套操作系统1000人的开发团队年时间才完成如果单单只按人员成本来算windows的价格应该定为99*40&gt;2999（vista
                                    ultimate版本售价），很合理嘛</div>
                            </fieldset>
                            微软开发一个操作系统要花多少亿美元，是不是一套系统卖给你几亿美元也算很合理啊？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977428,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977428">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977428,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977428);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977428">
                            </div>
                            <div id="Reply1977428" class="replydiv">
                            </div>
                            <div id="AxajTip21977428">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第79楼：King5268 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:37:18
                        </dd>
                        <dd class="oDetail">
                            我想肯定能达到一部分,但不会完全达到,很多不懂电脑的人一听到盗版会带来这么多麻烦,肯定会有所动心,而懂电脑的人却绝对不会为此多花一分钱,毕竟中国的人均收入还没达到欧美的水平,要想靠惩罚来强制推广产品,这是不可能的.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977316,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977316">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977316,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977316);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977316">
                            </div>
                            <div id="Reply1977316" class="replydiv">
                            </div>
                            <div id="AxajTip21977316">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第80楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:25:03
                        </dd>
                        <dd class="oDetail">
                            我庄严的阐述我的想法：我不知道
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977243,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977243">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977243,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977243);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977243">
                            </div>
                            <div id="Reply1977243" class="replydiv">
                            </div>
                            <div id="AxajTip21977243">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第81楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:18:03
                        </dd>
                        <dd class="oDetail">
                            是不是有人开始考虑换操作系统了呢?<br />
                            <br />
                            如果是,请选择windows 7
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977205,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977205">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977205,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977205);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977205">
                            </div>
                            <div id="Reply1977205" class="replydiv">
                            </div>
                            <div id="AxajTip21977205">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第82楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 16:02:25
                        </dd>
                        <dd class="oDetail">
                            有些gov 和军事单位可以强制使用一些开源免费os! ! ! 但是大部分又不会<br />
                            <br />
                            反而又要强制使用一些商业软件的格式<br />
                            <br />
                            气人!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1977141,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1977141">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1977141,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1977141);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31977141">
                            </div>
                            <div id="Reply1977141" class="replydiv">
                            </div>
                            <div id="AxajTip21977141">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第83楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:14:54
                        </dd>
                        <dd class="oDetail">
                            只是一场炒作
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976954,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976954">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976954,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976954);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976954">
                            </div>
                            <div id="Reply1976954" class="replydiv">
                            </div>
                            <div id="AxajTip21976954">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第84楼：k </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 15:09:10
                        </dd>
                        <dd class="oDetail">
                            黑屏事件与我何干？有点脑子的人不管用的什么系统，都不会被影响到。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976930,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976930">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976930,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976930);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976930">
                            </div>
                            <div id="Reply1976930" class="replydiv">
                            </div>
                            <div id="AxajTip21976930">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第85楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 14:57:22
                        </dd>
                        <dd class="oDetail">
                            变相的统计盗版数量,但不影响使用,因为MS靠&quot;数量&quot;证明它的用户最多,来国际盈利.
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976887,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976887">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976887,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976887);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976887">
                            </div>
                            <div id="Reply1976887" class="replydiv">
                            </div>
                            <div id="AxajTip21976887">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第86楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 14:44:17
                        </dd>
                        <dd class="oDetail">
                            他就是想让打大家用vista么
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976835,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976835">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976835,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976835);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976835">
                            </div>
                            <div id="Reply1976835" class="replydiv">
                            </div>
                            <div id="AxajTip21976835">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第87楼：zyll </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 14:34:11
                        </dd>
                        <dd class="oDetail">
                            黑屏只是提醒，微软也不是真文明用语我们用正版，有钱的有版权意识的可以选择安装，其他可以用盗版，用别的。微软一贯作风就是这样，中国国情还是要照顾的嘛
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976783,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976783">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976783,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976783);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976783">
                            </div>
                            <div id="Reply1976783" class="replydiv">
                            </div>
                            <div id="AxajTip21976783">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第88楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:45:05
                        </dd>
                        <dd class="oDetail">
                            <fieldset class="feedBack">
                                <legend class="fb_title">引用匿名人士的评论:</legend>
                                <div class="fb_content">
                                    这个要从根本来决绝 从小学到 大学 所有学校的教学平台换成linux 不然从小用win长大 长大了 没办法 只有破财免灾 如果这是战时 如果他不是让你黑屏 是让你不能瘫痪
                                    或者偷偷的 窃取你的 资料 信息安全问题</div>
                            </fieldset>
                            美国人从小在学校里面就接触大量的apple和linux，所以他们也不是这么依赖win
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976559,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976559">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976559,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976559);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976559">
                            </div>
                            <div id="Reply1976559" class="replydiv">
                            </div>
                            <div id="AxajTip21976559">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第89楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:42:58
                        </dd>
                        <dd class="oDetail">
                            广大忙着做盗版的程序高手如果能走在一起做些正面的开发，是不是更来得有远见呢，国家是不是也应该对此进行扶持？我文明用语 知道这个消息的第一反应是问我有没有对策，而不是想到买正版，如果正版只有50快，我估计我文明用语
                            就买了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976542,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976542">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976542,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976542);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976542">
                            </div>
                            <div id="Reply1976542" class="replydiv">
                            </div>
                            <div id="AxajTip21976542">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第90楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:39:12
                        </dd>
                        <dd class="oDetail">
                            其实，微软这次的反盗版已经放松了很大的限制了，微软并没有强制的要求用户必须安装正版增值计划通知，用户也有三次机会避免安装这一更新，只要你不安装，那还有什么理由去责骂微软
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976524,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976524">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976524,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976524);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976524">
                            </div>
                            <div id="Reply1976524" class="replydiv">
                            </div>
                            <div id="AxajTip21976524">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第91楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:32:33
                        </dd>
                        <dd class="oDetail">
                            Ubuntu是时候将8.10提前发布啦，相信很多人都在等30号的来临
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976474,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976474">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976474,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976474);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976474">
                            </div>
                            <div id="Reply1976474" class="replydiv">
                            </div>
                            <div id="AxajTip21976474">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第92楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:30:09
                        </dd>
                        <dd class="oDetail">
                            还真有人来参加辩论
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976459,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976459">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976459,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976459);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976459">
                            </div>
                            <div id="Reply1976459" class="replydiv">
                            </div>
                            <div id="AxajTip21976459">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第93楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:25:18
                        </dd>
                        <dd class="oDetail">
                            主观点：绝对能! 这一招对付普通用户肯定很有效。<br />
                            观点数：84 得票：146<br />
                            主观点：不能! 用技术手段来反盗版只是徒劳而已。<br />
                            观点数：157 得票：416
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976426,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976426">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976426,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976426);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976426">
                            </div>
                            <div id="Reply1976426" class="replydiv">
                            </div>
                            <div id="AxajTip21976426">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第94楼：吃鱼片的 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:13:36
                        </dd>
                        <dd class="oDetail">
                            微软的举措，告诉了中国ZF，美国企业可以随意控制中国用户的电脑。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976373,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976373">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976373,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976373);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976373">
                            </div>
                            <div id="Reply1976373" class="replydiv">
                            </div>
                            <div id="AxajTip21976373">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第95楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:09:54
                        </dd>
                        <dd class="oDetail">
                            我个人觉得，此次微软的目的是“强行戒奶”，大家对XP的感情太好，依赖性太大；不利于他的新系统推广与应用。公司是靠盈利为目的，东西卖不出去，还谈何盈利
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976350,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976350">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976350,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976350);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976350">
                            </div>
                            <div id="Reply1976350" class="replydiv">
                            </div>
                            <div id="AxajTip21976350">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第96楼：tino </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 13:01:20
                        </dd>
                        <dd class="oDetail">
                            一定程度上能,但是还是很难!价格是一个问题!
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976305,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976305">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976305,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976305);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976305">
                            </div>
                            <div id="Reply1976305" class="replydiv">
                            </div>
                            <div id="AxajTip21976305">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第97楼：匿名人士 </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:57:00
                        </dd>
                        <dd class="oDetail">
                            用户的桌面图片，微软是可以控制的! !
                            <br />
                            这话怎么讲？<br />
                            随便装一个美化软件，连登陆界面都给你换了! !
                            <br />
                            问题是，你同不同意。人家没强迫让你装，你非要装，还迫不及待的装，那我只能说，“盗版用户，自觉黑屏”。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976280,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976280">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976280,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976280);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976280">
                            </div>
                            <div id="Reply1976280" class="replydiv">
                            </div>
                            <div id="AxajTip21976280">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第98楼：iNVAiN </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:50:20
                        </dd>
                        <dd class="oDetail">
                            我想问一下，而各位在讨论这个话题之前也应该问问自己，微软到底是什么目的。<br />
                            <br />
                            <br />
                            <br />
                            黑屏对windows的正常使用几乎没有影响，微软对待盗版的使用者依旧是采取温柔容忍的态度。黑屏至多是一种善意的提醒，告诉你盗版用户和正版还是有区别的。<br />
                            <br />
                            微软知道盗版市场的最终命运的选择权来自用户，因此此举是在扩大影响，引起注意，通过舆论引导用户自觉脱离盗版。 黑屏的目的并非打击盗版，而是引导用户选择正版，我觉得这是微软的目的。
                            PS：这个辩论怎么设的啊，每个人对微软的目的认定不一样，议题不一样怎么选正反方啊？
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976238,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976238">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976238,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976238);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976238">
                            </div>
                            <div id="Reply1976238" class="replydiv">
                            </div>
                            <div id="AxajTip21976238">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第99楼：sariel </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:36:08
                        </dd>
                        <dd class="oDetail">
                            我觉得比尔盖茨走后，微软帝国越来越急于功力。我就不知道是谁提出在中国搞这么个举措，对中国人民怎么能硬碰硬呢，中华上下五千年的历史让我们人民知道谁来搞我们，谁都是不对的。骨子里的抵触，在这样的情况下，谁能分的清是非？而微软急于效益，一下子敢向东方的神秘古国开炮，他不失败谁失败，中国人民那么团结。而我们人民也陷于自身的团结而不能自拔。就这样闷死吧。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976165,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976165">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976165,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976165);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976165">
                            </div>
                            <div id="Reply1976165" class="replydiv">
                            </div>
                            <div id="AxajTip21976165">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="oTitle">第100楼：xiaobingq </dt>
                        <dd class="oAuthor">
                            发表时间：2008-10-21 12:34:52
                        </dd>
                        <dd class="oDetail">
                            微软并没有做错，只是在维护自己的合法权益。中国的国情就决定了，无论微软采取什么措施，对正版软件的销量并没有什么大的改变。我觉得最理想的方式还是降价，降到100元以内，估计就没多少人用正版了。
                        </dd>
                        <dd class="oOperator">
                            <a href="javascript:_ReplyVote(1976155,3,67605);" style="color: #bc2931">支持</a>(<span
                                id="support1976155">0</span>)&nbsp;&nbsp;<a href="javascript:_ShowReply(1976155,67605,3);">引用此观点</a>
                            &nbsp;&nbsp;<a href="javascript:_ReplyReport(1976155);" title="此评论有问题，点击举报">举报</a>
                            <div id="AxajTip31976155">
                            </div>
                            <div id="Reply1976155" class="replydiv">
                            </div>
                            <div id="AxajTip21976155">
                            </div>
                        </dd>
                    </dl>
                    <div id="news-bottom1">
                        <div id="news-bottom-left1">
                            <div id="news-bottom-list1">
                                <span>上一页</span>[<strong><span>1</span></strong>] [<a href="#ncomment" onclick="javascript:Ncomment3('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=3','replyh')">2</a>]
                                <a href="#ncomment" onclick="javascript:Ncomment3('POST','/acomment.php?pageID=2&amp;sid=67605&amp;type=3','replyh')">
                                    下一页</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end argue content -->
    </div>
    <!-- end main body -->

    <script type="text/javascript" src="http://www.google-analytics.com/urchin.js">
    </script>

    <script type="text/javascript">
        _uacct = "UA-435607-2";
        urchinTracker();
    </script>

    <script language="javascript" type="text/javascript" src="http://js.users.51.la/987284.js"></script>

    <a href="http://www.51.la/?00987284" target="_blank">
        <img alt="我要啦免费统计 VIP 用户" src="http://icon.ajiang.net/icon_0.gif" /></a>
    <img src="http://vip.51.la/go.asp?we=A-Free-Service-for-Webmasters&amp;svid=19&amp;id=987284&amp;tpages=7&amp;ttimes=1&amp;tzone=8&amp;tcolor=32&amp;sSize=1024,768&amp;referrer=http%3A//www.cnbeta.com/argues/&amp;vpage=http%3A//www.cnbeta.com/argues/67605.htm" />
    <noscript>
    </noscript>

    <script language="javascript" src="http://count28.51yes.com/click.aspx?id=289804176&amp;logo=1"></script>

    <a href="http://count.51yes.com/index.aspx?id=289804176" target="_blank">
        <img alt="51YES网站统计系统" border="0" height="20" hspace="0" src="http://count28.51yes.com/count1.gif"
            vspace="0" width="20" /></a><iframe id="I1" frameborder="0" height="0" hspace="0"
                marginheight="0" marginwidth="0" name="I1" scrolling="no" src="http://count28.51yes.com/sa.aspx?id=289804176&amp;refe=http%3A//www.cnbeta.com/argues/&amp;location=http%3A//www.cnbeta.com/argues/67605.htm&amp;color=32x&amp;resolution=1024x768&amp;returning=0&amp;language=zh-cn&amp;ua=Mozilla/4.0%20%28compatible%3B%20MSIE%208.0%3B%20Windows%20NT%205.1%3B%20Trident/4.0%3B%20GoogleT5%3B%20.NET%20CLR%202.0.50727%3B%20.NET%20CLR%203.0.04506.648%3B%20.NET%20CLR%203.5.21022%3B%20.NET%20CLR%203.0.4506.2152%3B%20.NET%20CLR%203.5.30729%3B%20MS-RTC%20EA%202%3B%20MS-RTC%20LM%208%3B%20CIBA%29"
                vspace="0" width="0"></iframe>
</body>
</html>
