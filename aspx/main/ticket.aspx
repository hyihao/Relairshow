<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>2014珠海航展门票购买:优惠票，特惠票，成人票，家庭票,团体票</title>\r\n    <meta content=\"航展优惠票，航展特惠票，航展成人票，航展家庭票，航展团体票\" name=\"keywords\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\"\r\n        rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/list.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"hzbody cls_980 overhide\">\r\n         <h2 class=\"hz_itemlist_nva\">\r\n            航展门票票种列表: <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">2014珠海航展</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\" target=\"_blank\" title=\"航展门票订购\">航展门票预订</a>\r\n        </h2>\r\n     <a href=\"");
	templateBuilder.Append(linkurl("airshow"));

	templateBuilder.Append("\" title=\"2014珠海航展门票_奇比拉\"><img src=\"../../images/01.jpg\" alt=\"2014珠海航展门票_奇比拉\" width=\"980px\" /></a> \r\n           <div class=\"blank10\">\r\n        </div>\r\n        <div class=\"ticket_list clearfix\">           \r\n                \r\n        ");
	DataTable hztickets = get_article_list("goods", 44, 12, "is_red=1 and img_url<>''");

	int hzticket__loop__id=0;
	foreach(DataRow hzticket in hztickets.Rows)
	{
		hzticket__loop__id++;


	templateBuilder.Append("\r\n            <div class=\"hzdeal\">\r\n                <a title=\"" + Utils.ObjectToStr(hzticket["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(hzticket["id"])));

	templateBuilder.Append("\" class=\"hzdeal_title_cover\">\r\n                    <img width=\"314\" height=\"192\" class=\"J-webp\" alt=\"" + Utils.ObjectToStr(hzticket["title"]) + "\" src=\"" + Utils.ObjectToStr(hzticket["img_url"]) + "\">\r\n                    <span class=\"hzdeal_mark\"><em class=\"hzdeal_mark_pois\" title=\"全国包邮\">全国包邮</em> </span>\r\n                </a>\r\n                <h3 class=\"hzdealtitle\">\r\n                    <a title=\"" + Utils.ObjectToStr(hzticket["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(hzticket["id"])));

	templateBuilder.Append("\" class=\"wlink\">\r\n                    <span class=\"xtitle\" id=\"ticket_");
	templateBuilder.Append(Utils.ObjectToStr(hzticket__loop__id));
	templateBuilder.Append("\">" + Utils.ObjectToStr(hzticket["title"]) + "</span>\r\n                        <span class=\"short-title\" >" + Utils.ObjectToStr(hzticket["seo_description"]) + "</span>\r\n                    </a>\r\n                </h3>\r\n                <p class=\"hzprice\">\r\n                    <span class=\"pricetag\">￥ <strong>" + Utils.ObjectToStr(hzticket["market_price"]) + "</strong> </span><a title=\"" + Utils.ObjectToStr(hzticket["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(hzticket["id"])));

	templateBuilder.Append("\">去看看</a>\r\n                </p>\r\n                <div class=\"hzdeal_extra\" >\r\n                    <p class=\"extra_inner\" >\r\n                        <span class=\"sales\">已售<strong class=\"num\">" + Utils.ObjectToStr(hzticket["click"]) + "</strong></span>\r\n                     <a href=\"#\"  class=\"rate_info\" >\r\n                        <span class=\"rate_info__bar common-rating\">\r\n                            <span  class=\"rate_stars\" style=\"width: 92%;\"></span>\r\n                        </span>\r\n                        <span class=\"rate-info__count\"  >");
	templateBuilder.Append(get_comment_count(Utils.StrToInt(Utils.ObjectToStr(hzticket["id"]), 0),"").ToString());

	templateBuilder.Append("人评价</span>\r\n                     </a>\r\n                   </p>\r\n                </div>\r\n            </div>\r\n             ");
	}	//end for if

	templateBuilder.Append("        \r\n        </div>       \r\n    </div>\r\n\r\n    <div class=\"hzbrower\">\r\n    <div class=\"hzbody\">\r\n        <h3 class=\"hzbrower_title\">\r\n                历届珠海航展一览</h3>\r\n    <div class=\"hzbrower-arrange\">\r\n                <dl class=\"arrange-one\">\r\n                    <dt>1</dt>\r\n                    <dd class=\"arran-time\">\r\n                       <a href=\"http://www.qilabi.com/news/show-168.aspx\">首届航展</a> </dd>\r\n                    <dd class=\"meet-name\">\r\n                      1996年11月5日至10日</dd>\r\n                </dl>\r\n                <dl class=\"arrange-two\">\r\n                    <dt>2</dt>\r\n                    <dd class=\"arran-time\">\r\n                         <a href=\"http://www.qilabi.com/news/show-169.aspx\">第二届中国航展 </dd>\r\n                    <dd class=\"meet-name\">\r\n                        1998年11月15日至22日</dd>\r\n                </dl>\r\n                <dl class=\"arrange-three\">\r\n                    <dt>3</dt>\r\n                    <dd class=\"arran-time\">\r\n                       <a href=\"http://www.qilabi.com/news/show-170.aspx\"> 第三届中国航展 </a></dd>\r\n                    <dd class=\"meet-name\">\r\n                        2000年11 月6日-12日</dd>\r\n                </dl>\r\n                <dl class=\"arrange-four\">\r\n                    <dt>4</dt>\r\n                    <dd class=\"arran-time\">\r\n                       <a href=\"http://www.qilabi.com/news/show-171.aspx\">   第四届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                       2002年没有飞行表演 </dd>\r\n                </dl>\r\n                  <dl class=\"arrange-five\">\r\n                    <dt>5</dt>\r\n                    <dd class=\"arran-time\">\r\n                        <a href=\"http://www.qilabi.com/news/show-172.aspx\">  第五届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                       2004年10月31日至11月7日 </dd>\r\n                </dl>\r\n                     <dl class=\"arrange-six\">\r\n                    <dt>6</dt>\r\n                    <dd class=\"arran-time\">\r\n                       <a href=\"http://www.qilabi.com/news/show-173.aspx\">   第六届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                        2006年10月31日-11月5日</a></dd>\r\n                </dl>\r\n                     <dl class=\"arrange-seven\">\r\n                    <dt>7</dt>\r\n                    <dd class=\"arran-time\">\r\n                         <a href=\"http://www.qilabi.com/news/show-174.aspx\"> 第七届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                        2008年11月9日</dd>\r\n                </dl>\r\n                     <dl class=\"arrange-eight\">\r\n                    <dt>8</dt>\r\n                    <dd class=\"arran-time\">\r\n                        <a href=\"http://www.qilabi.com/news/show-175.aspx\">  第八届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                        2010年11月16日—21日</dd>\r\n                </dl>\r\n                     <dl class=\"arrange-nine\">\r\n                    <dt>9</dt>\r\n                    <dd class=\"arran-time\">\r\n                       <a href=\"http://www.qilabi.com/news/show-176.aspx\" target=\"_blank\"> 第九届中国航展</a></dd>\r\n                    <dd class=\"meet-name\">\r\n                        2012年11月13日—18日</dd>\r\n                </dl>\r\n                     <dl class=\"arrange-ten\">\r\n                    <dt>10</dt>\r\n                    <dd class=\"arran-time\">\r\n                        &nbsp;</dd>\r\n                    <dd class=\"meet-name\">\r\n                       &nbsp; </dd>\r\n                </dl>\r\n                  \r\n\r\n                <div class=\"now-arrange\">\r\n                    <div class=\"now-time\">\r\n                        第十届珠海航展</div>\r\n                    <div class=\"now-meet\">\r\n                        2014年11月11号-16号</div>\r\n                    <div class=\"new\">\r\n                         <a href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\" target=\"_blank\"> 购票</a></div>\r\n                    <div class=\"arrow\">\r\n                        &nbsp;</div>\r\n                </div>\r\n            </div>\r\n</div>\r\n\r\n    </div>\r\n    \r\n    <div class=\"clear\">\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
