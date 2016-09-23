<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/8/3 12:39:23.
		本页面代码由DTcms模板引擎生成于 2015/8/3 12:39:23. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n \r\n    ");
	string category_title = get_category_title(category_id,"新闻资讯");

	templateBuilder.Append("\r\n   <title>");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("_");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("</title>\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("\" name=\"keywords\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/list.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <!--Header-->\r\n    ");

	templateBuilder.Append("<div class=\"clscontent\">\r\n    <!--logo-->\r\n    <div class=\"clshead\">\r\n        <div class=\"clslogo\" title=\"珠海航展门票\">\r\n            <h1>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" title=\"2014航展门票\">2014珠海航展官网指定销售商</a></h1>\r\n        </div>\r\n\r\n        <!--<div class=\"f_l kfzixun \">\r\n            <p class=\" f_l\">航展门票咨询热线</p>\r\n            <p class=\"f_l\">400 676 0405</p>\r\n        </div>-->\r\n        <div class=\"clspreson\">                      \r\n            <tt>Hi,</tt><em><label id=\"stime\"></label>\r\n            </em>\r\n            \r\n            ");
	if (IsUserLogin())
	{

	templateBuilder.Append("\r\n     <a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a>!\r\n      <a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">");
	if (Session["nickname"]!=null)
	{

	templateBuilder.Append(Session["nickname"].ToString());

	}
	else
	{

	templateBuilder.Append("会员中心");
	}	//end for if

	templateBuilder.Append("</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a href=\"");
	templateBuilder.Append(linkurl("queryorder"));

	templateBuilder.Append("\" style=\"color: #A9A3D8\" title=\"航展门票订单查询\">订单查询</a>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a>|\r\n      <a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a>|       \r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    </div>\r\n    <!--title-->\r\n    <div class=\"cls_title\">\r\n        <div class=\"clsmenu\">\r\n            <ul class=\"clsnav\">\r\n                <li class=\"first\"><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a>\r\n                </li>\r\n     <li><i class=\"hot\">2014航展门票购买</i> <a href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\" target=\"_blank\"\r\n                    title=\"航展门票订购\">航展门票预订</a> </li>           \r\n                    <li><i class=\"hot\">2014航展套票</i> <a href=\"");
	templateBuilder.Append(linkurl("taopiao"));

	templateBuilder.Append("\" target=\"_blank\"\r\n                    title=\"航展套票\">航展套票</a> </li> \r\n             \r\n                     <li><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",33));

	templateBuilder.Append("\" title=\"珠海航展攻略\">航展攻略</a></li>\r\n      <li>\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",4));

	templateBuilder.Append("\" title=\"珠海航展门票价格\">航展问答</a></li>\r\n         <li>\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",35));

	templateBuilder.Append("\" title=\"\" rel=\"nofllow\">历届航展</a></li>\r\n         <li>\r\n <li>\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("changlong"));

	templateBuilder.Append("\" title=\"\" rel=\"nofllow\">珠海长隆</a></li>\r\n         <li>\r\n      <a target=\"_blank\" href=\"http://www.qilabi.com/content/about.aspx\" title=\"\" rel=\"nofllow\">关于我们</a></li>\r\n<li>\r\n      <a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a1z10.1.w4004-8861640800.8.TMILMo&id=41686013354\" title=\"\" rel=\"nofllow\">淘宝入口</a>\r\n</li>\r\n\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>\r\n");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"hangzhanNewsListMain cls_980\">\r\n       <h2 class=\"hz_itemlist_nva\">\r\n            2014珠海航展门票中心: <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">2014珠海航展</a> &gt;  <a href=\"");
	templateBuilder.Append(linkurl("news_list",category_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("</a>\r\n        </h2>      \r\n        <div class=\"hzNewsList clearfix\">\r\n            <div class=\"f_l left677\">\r\n                <div class=\"newslist\">\r\n                    <table>\r\n                        <!--取得一个DataTable-->\r\n                        <!--取得分页页码列表-->\r\n                        <tbody>\r\n                            ");
	DataTable news_list = get_article_list("news", category_id,  page, "status=0", out totalcount, out pagelist,"news_list", category_id, "__id__");

	templateBuilder.Append("\r\n                            <!--取得一个DataTable-->\r\n                            ");
	foreach(DataRow listdr in news_list.Rows)
	{

	templateBuilder.Append("\r\n                            <tr>\r\n                                <td>\r\n                                    <div>\r\n                                        <h2 class=\"newslist_title\">\r\n                                            <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(listdr["title"]) + "</a>\r\n                                        </h2>\r\n                                        <div class=\"Gcontent\">\r\n                                            <img alt=\"" + Utils.ObjectToStr(listdr["title"]) + "\" src=\"" + Utils.ObjectToStr(listdr["img_url"]) + "\" border=\"0\" width=\"0\" height=\"0\"\r\n                                                onload=\"autoResizeImage(120,0,this)\">\r\n                                            " + Utils.ObjectToStr(listdr["zhaiyao"]) + "<a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\">阅读全文</a></div>\r\n                                        <div class=\"Gnewstime\">\r\n                                            <span class=\"time\">发布时间：" + Utils.ObjectToStr(listdr["add_time"]) + "&nbsp;&nbsp;&nbsp;</span> <span class=\"comm\">\r\n                                              <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_comment_count&id=" + Utils.ObjectToStr(listdr["id"]) + "\"></");
	templateBuilder.Append("script>\r\n                                              人评论</span>\r\n                                            <span class=\"view\">浏览： <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=" + Utils.ObjectToStr(listdr["id"]) + "\"></");
	templateBuilder.Append("script></span>\r\n                                        </div>\r\n                                    </div>\r\n                                </td>\r\n                            </tr>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </tbody>\r\n                    </table>\r\n                    <div class=\"blank10\">\r\n                    </div>\r\n                    <div class=\"flickr\">\r\n                        ");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div>\r\n                    <div class=\"blank10\">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"f_r left300\">\r\n                <div class=\"side \">\r\n                    <h3 class=\"side_title side_title1\">\r\n                        珠海航展酒店预订<span class=\"triangle trianglen1\"></span></h3>\r\n                 <iframe height=\"780\" width=\"268\" border=\"0\"  frameborder=\"0\" scrolling=\"no\" style=\"border:none\"  src=\"http://u.ctrip.com/union/Code/HotelCityListBox.aspx?logo=0&orderby=&cityID=31&AllianceID=3911&sid=295913&height=&width=268&counts=30&ouid=&app=0105A02\" id=\"preview\"></iframe> \r\n                    <h3 class=\"side_title side_title1\">\r\n                        珠海航展热点文章<span class=\"triangle trianglen1\"></span></h3>\r\n                    <ul class=\"ul_hot_news\">\r\n                        ");
	DataTable hotnews = get_article_list("news", 0, 5, "status=0", "click desc,id desc");

	int newsdr11__loop__id=0;
	foreach(DataRow newsdr11 in hotnews.Rows)
	{
		newsdr11__loop__id++;


	templateBuilder.Append("\r\n\r\n                        <li class=\"f-cb\">\r\n                            <div class=\"u-num-con\">\r\n                                <h4>\r\n                                    <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\" target=\"_blank\">" + Utils.ObjectToStr(newsdr11["title"]) + "</a></h4>\r\n                                <div class=\"u-num\">\r\n                                    <em class=\"n");
	templateBuilder.Append(Utils.ObjectToStr(newsdr11__loop__id));
	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(newsdr11__loop__id));
	templateBuilder.Append("</em></div>\r\n                                <div class=\"u-img\">\r\n                                    <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\" target=\"_blank\">\r\n                                        <img class=\"img80-60\" width=\"80\" height=\"60\" src=\"" + Utils.ObjectToStr(newsdr11["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(newsdr11["title"]) + "\"></a></div>\r\n                                <div class=\"txt\">\r\n                                    <p>\r\n                                        <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\" target=\"_blank\">" + Utils.ObjectToStr(newsdr11["zhaiyao"]) + "</a></p>\r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Header-->\r\n    ");

	templateBuilder.Append("<div class=\"blank15\">\r\n</div>\r\n<div class=\"footerseo clearfix\">\r\n   \r\n    <div class=\"footerseo_con\">\r\n        <div class=\"seo_title clearfix\">\r\n            <h3 class=\"seotitle2\">\r\n                地图导航</h3>\r\n            <a class=\"more\" target=\"_blank\" href=\"http://you.ctrip.com/sitemap/placedis/c110000\">\r\n                全部 &gt;</a></div>\r\n        <div class=\"linklist clearfix\">\r\n            <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\" target=\"_blank\">首页</a><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",33));

	templateBuilder.Append("\">航展攻略</a>\r\n            <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",1));

	templateBuilder.Append("\">航展动态</a> <a target=\"_blank\"\r\n                href=\"");
	templateBuilder.Append(linkurl("news_list",4));

	templateBuilder.Append("\">航展问答</a> <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_list",3));

	templateBuilder.Append("\">\r\n                    航展焦点</a> <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">航空航天图片</a>\r\n        </div>\r\n    </div>\r\n    <div class=\"footerseo_con\">\r\n        <div class=\"seo_title clearfix\">\r\n            <h3 class=\"seotitle2\">\r\n                航展回顾</h3>\r\n            <a class=\"more\" target=\"_blank\" href=\"http://you.ctrip.com/sitemap/placedis/c110000\">\r\n                全部 &gt;</a></div>\r\n        <div class=\"linklist clearfix\">\r\n            ");
	DataTable huigus = get_article_list("news", 35, 10, "status=0");

	int huigu__loop__id=0;
	foreach(DataRow huigu in huigus.Rows)
	{
		huigu__loop__id++;


	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(huigu["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(huigu["title"]) + "\" target=\"_blank\">\r\n                " + Utils.ObjectToStr(huigu["title"]) + "</a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    </div>\r\n    <div class=\"footerseo_con\">\r\n        <div class=\"seo_title clearfix\">\r\n            <h3 class=\"seotitle2\">\r\n                友情链接</h3>\r\n        </div>\r\n        <div class=\"linklist clearfix\">\r\n            ");
	DataTable linkList1 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0 and is_image=0 and is_red=1");

	foreach(DataRow dr in linkList1.Rows)
	{

	templateBuilder.Append("\r\n            <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"footgray\">\r\n    <div class=\"footinner clearfix\">\r\n        <dl>\r\n            <dt>网站相关</dt>\r\n            ");
	DataTable footercontentlist = get_article_list("content", 0, 0, "status=0");

	foreach(DataRow dr in footercontentlist.Rows)
	{

	templateBuilder.Append("\r\n        <dd><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("content",Utils.ObjectToStr(dr["call_index"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></dd>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n       </dl>\r\n\r\n        <dl>\r\n            <dt>购票便捷</dt>\r\n            <dd>无须注册</dd>\r\n            <dd>快速出票</dd>\r\n            <dd>快捷支付</dd>\r\n            <dd>顺丰快递</dd>\r\n            <dd>一日三送</dd>            \r\n       </dl>    \r\n\r\n        <dl>\r\n            <dt>服务提供</dt>\r\n            <dd>官网授权</dd> \r\n            <dd>航展门票代理</dd>\r\n            <dd>航展套票</dd>  \r\n            <dd>珠海旅游景区</dd>    \r\n            <dd>看航展游长隆泡温泉</dd>     \r\n       </dl>       \r\n        <dl>\r\n            <dt>客服热线</dt>\r\n            <dd>400 676 0405</dd>\r\n            <dd>15989768355</dd> \r\n            <dd>0756-6855591</dd>\r\n            <dd></dd>                     \r\n       </dl>\r\n         <dl>\r\n            <dt>微信关注</dt>\r\n            <dd><img src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/Images/weixin.jpg\" width=\"175px\" /></dd>\r\n                            \r\n       </dl>\r\n\r\n    </div>\r\n</div>\r\n\r\n<div class=\"copyright\">\r\n    <span class=\"\">© 版权所有2003-2014 官方授权珠海航展门票销售商 qibila 提供最专业的珠海航展门票预订-奇比拉有限公司, All rights\r\n        reserved.</span><br />\r\n    粤ICP备14066312号-1 欢迎合作:qibila#163.com|<script src=\"http://s23.cnzz.com/stat.php?id=1253259831&web_id=1253259831&show=pic\"  language=\"JavaScript\"></");
	templateBuilder.Append("script>\r\n</div>\r\n\r\n<div id=\"online\" class=\"online\">\r\n    <div class=\"onlinetext\">\r\n        <a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=337662980&amp;site=qq&amp;menu=yes\"\r\n            class=\"q4\" target=\"_blank\" title=\"航展门票咨询Sugar\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=115966238&amp;site=qq&amp;menu=yes\"\r\n                class=\"q2\" target=\"_blank\" title=\"航展门票咨询Ava\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=337662980&amp;site=qq&amp;menu=yes\"\r\n                    class=\"q3\" target=\"_blank\" title=\"航展门票咨询客服\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=149228102&amp;site=qq&amp;menu=yes\"\r\n                        class=\"q1\" target=\"_blank\" title=\"航展门票投诉建议\"></a>\r\n    </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    $(document).ready(function () {\r\n\r\n        var stime = '';\r\n        now = new Date(), hour = now.getHours();\r\n        if (hour < 6) { stime = \"凌晨好！\" }\r\n        else if (hour < 9) { stime = \"早上好！\" }\r\n        else if (hour < 12) { stime = \"上午好！\" }\r\n        else if (hour < 14) { stime = \"中午好！\" }\r\n        else if (hour < 17) { stime = \"下午好！\" }\r\n        else if (hour < 19) { stime = \"傍晚好！\" }\r\n        else if (hour < 22) { stime = \"晚上好！\" }\r\n        else { stime = \"夜里好！\" }\r\n        $('#stime').text(stime);\r\n\r\n        $('#changecity').click(function () {\r\n\r\n            if ($('#citylist').hasClass(\"citydis\")) {\r\n                $('#citylist').removeClass('citydis');\r\n                $('#citys').addClass(\"cityshow\");\r\n\r\n            } else {\r\n                $('#citylist').show(\"2000\");\r\n                $('#citylist').addClass('citydis');\r\n                $('#citys').removeClass(\"cityshow\");\r\n            }\r\n        })\r\n    });\r\n\r\n      \r\n</");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">        var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\"); document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fc60e4d4891cde5ef99cc098806ec5f51' type='text/javascript'%3E%3C/script%3E\")) </");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
