<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>2014珠海航展门票|珠海航展|珠海航展门票价格|2014珠海航展门票预订|第十届中国珠海航展门票--珠海航展门票哪里买?就到奇比拉航展</title>\r\n    <meta content=\"珠海航展|2014年珠海航展|2014年珠海航展门票|珠海航展门票价格|2014珠海航展门票预订|珠海航展门票团购\" name=\"keywords\">\r\n    <meta content=\"珠海航展门票哪买强？--第十届中国航展售票点珠海奇比拉航展门票获取珠海航展门票价格,2014年珠海航展门票,航展时间，请登录第十届珠海航展官方合作伙伴奇比拉航展400 676 0405\"\r\n        name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/slides.jquery.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/silde.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $('#slides').slides({\r\n                preload: true,\r\n                preloadImage: 'img/loading.gif',\r\n                play: 5000,\r\n                pause: 2500,\r\n                hoverPause: true\r\n            });\r\n            var x_pos = 0;\r\n            var li_items_n = 0;\r\n            var right_clicks = 0;\r\n            var left_clicks = 0;\r\n            var li_col = jQuery(\"#slider_list > li\");\r\n            var li_width = li_col.outerWidth(true);\r\n            var viewWindow = Math.round(jQuery('.block-slider').width() / li_width);\r\n            //alert(viewWindow);\r\n            li_col.each(function (index) {\r\n                x_pos += jQuery(this).outerWidth(true);\r\n                li_items_n++;\r\n            })\r\n\r\n            right_clicks = li_items_n - viewWindow;\r\n            total_clicks = li_items_n - viewWindow;\r\n\r\n            //alert(right_clicks);\r\n\r\n            $('#slider_list').css('position', 'relative');\r\n            $('#slider_list').css('left', '0px');\r\n            $('#slider_list').css('width', x_pos + 'px');\r\n\r\n            var slider_link = $('#right_but');\r\n            var slider_link_index = 1;\r\n            var slider_count = $('#slider_list > li').size();\r\n\r\n            function slider_intro() {\r\n                if (slider_link_index <= slider_count) {\r\n                    slider_link.trigger('click');\r\n                    slider_link_index++;\r\n                    setTimeout(function () { slider_intro() }, 5000); //select change time\r\n                }\r\n            }\r\n            setTimeout(function () { slider_intro() }, 5000);\r\n\r\n            $('#slider_list>li').each(function (a, b) {\r\n                $(b).hover(function () {\r\n                    $(b).find('span').stop().animate({ 'bottom': 5 }, 500)\r\n                }, function () {\r\n                    $(b).find('span').stop().animate({ 'bottom': -($(b).height() + 5) }, 300);\r\n                });\r\n            });\r\n        });\r\n    </");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"cls_main\">\r\n        <div class=\"banner_box\">\r\n            <div id=\"slides\">\r\n                <div class=\"slides_container\">\r\n                  <div class=\"slide\">\r\n                           <a href='");
	templateBuilder.Append(linkurl("wanshengjie"));

	templateBuilder.Append("' title=\"万圣节狂欢，航展门票价格促销\" target=\"_blank\">\r\n                            <img src=\"Images/5.jpg\" width=\"1920\" height=\"600\" alt=\"万圣节狂欢，航展门票预订\" /></a>\r\n                    </div>\r\n                    <div class=\"slide\">\r\n                        <a href=\"#\" title=\"珠海航展\" target=\"_blank\">\r\n                            <img src=\"Images/1.jpg\" width=\"1920\" height=\"600\" alt=\"珠海航展时间\" /></a>\r\n                    </div>\r\n                    <div class=\"slide\">\r\n                        <a href=\"http://www.qilabi.cocm/ticket.aspx\" title=\"珠海航展门票,销量遥遥领先\" target=\"_blank\">\r\n                            <img src=\"Images/2.jpg\" width=\"1920\" height=\"600\" alt=\"珠海航展门票\" /></a>\r\n                    </div>\r\n                 <!--   <div class=\"slide\">\r\n                        <a href=\"http://www.qilabi.cocm/taopiao.aspx\" title=\"珠海航展，不见不散\" target=\"_blank\">\r\n                            <img src=\"Images/3.jpg\" width=\"1920\" height=\"600\" alt=\"珠海航展公众日:11.14-11.16\" /></a>\r\n                    </div>\r\n                    <div class=\"slide\">\r\n                        <a href=\"http://www.qilabi.cocm/taopiao.aspx\" title=\"珠海航展世界5大航展之一\" target=\"_blank\">\r\n                            <img src=\"Images/4.jpg\" width=\"1920\" height=\"600\" alt=\"珠海航展，全面提升民族自信\" /></a>\r\n                    </div>-->\r\n                  \r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"i_conter\">\r\n            <div class=\"m_conter\">\r\n                <div class=\"skin_box\">\r\n                    <ul class=\"menpiaolist clearfix\">\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("airshoworders",184));

	templateBuilder.Append("\" class=\"one\">珠海航展门票【成人票】 </a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("airshoworders",185));

	templateBuilder.Append("\" class=\"two\">珠海航展门票【家庭票】</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("airshoworders",190));

	templateBuilder.Append("\" class=\"three\">珠海航展门票【优惠票】</a></li>\r\n                        <li><a href=\"");
	templateBuilder.Append(linkurl("airshoworders",188));

	templateBuilder.Append("\" class=\"four\">珠海航展门票团体票</a></li>\r\n                    </ul>\r\n                    <div class=\"blank10\">\r\n                    </div>\r\n                    <h3 class=\"deatil_title\">\r\n                        珠海航展门票</h3>\r\n                    <table width=\"960\" cellspacing=\"0\" class=\"menpiao_detail\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>特惠票</strong>\r\n                                </td>\r\n                                <td>\r\n                                    <strong>150元</strong>\r\n                                </td>\r\n                                <td>\r\n                                    珠海航展门票特惠票价格为人民币150元/张，适用于18周岁及以下<br />\r\n                                    珠海户口的中小学生和幼童。（即1997年1月1日及以后出生）<br />\r\n                                </td>\r\n                                <td>\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",189));

	templateBuilder.Append("' class=\"iBtn iBtnBlue\" target=\"_blank\"\r\n                                        title=\"航展特惠门票\">点击购买</a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>优惠票</strong>\r\n                                </td>\r\n                                <td>\r\n                                    <strong>200元</strong>\r\n                                </td>\r\n                                <td>\r\n                                    适用于 25 周岁以下全日制学校的大中小学生（不含研究生和在职教育学生）<br>\r\n                                    身高 1.5 米以下的儿童、残疾人士和 60 周岁及以上老年人；<br>\r\n                                    入场时需出示相关有效证件（学生证或证明、残疾证、身份证）。\r\n                                </td>\r\n                                <td>\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",190));

	templateBuilder.Append("' class=\"iBtn iBtnBlue\" target=\"_blank\"\r\n                                        title=\"航展优惠门票\">点击购买</a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td width=\"144\">\r\n                                    <strong>个人票</strong>\r\n                                </td>\r\n                                <td width=\"169\">\r\n                                    <strong>400元</strong>\r\n                                </td>\r\n                                <td width=\"473\">\r\n                                    1.5 米以上的参观客人，适使用所有人员；<br>\r\n                                    禁止携带无票儿童入场。\r\n                                </td>\r\n                                <td width=\"174\">\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",184));

	templateBuilder.Append("' target=\"_blank\" class=\"iBtn iBtnBlue\"\r\n                                        title=\"航展成人门票\">点击购买</a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>家庭票</strong>\r\n                                </td>\r\n                                <td>\r\n                                    <strong>950元</strong>\r\n                                </td>\r\n                                <td>\r\n                                    适用于2个成人带1个身高1.5米（含1.5米）以下儿童）。（验票通道前设立身高标尺）<br>\r\n                                    2大1小同时入场。\r\n                                </td>\r\n                                <td>\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",185));

	templateBuilder.Append("' target=\"_blank\" class=\"iBtn iBtnBlue\"\r\n                                        title=\"航展家庭门票\">点击购买 </a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>团体票</strong>\r\n                                </td>\r\n                                <td>\r\n                                    <strong>5500元</strong>\r\n                                </td>\r\n                                <td>\r\n                                    每张门票须 15 人同时入场。\r\n                                </td>\r\n                                <td>\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",188));

	templateBuilder.Append("' target=\"_blank\" class=\"iBtn iBtnBlue\"\r\n                                        title=\"航展团体门票\">点击购买</a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td>\r\n                                    <strong>电子票</strong>\r\n                                </td>\r\n                                <td>\r\n                                    <strong>370元</strong>\r\n                                </td>\r\n                                <td>\r\n                                    1.5 米以上的参观客人，适使用所有人员，为团体票的拆分<br>\r\n                                    由我方在航展馆5号口处组团入内，无实物门票.联系电话15015914772\r\n                                </td>\r\n                                <td>\r\n                                    <a href='");
	templateBuilder.Append(linkurl("airshoworders",200));

	templateBuilder.Append("' target=\"_blank\" class=\"iBtn iBtnBlue\"\r\n                                        title=\"航展团购门票\">点击购买</a>\r\n                                </td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>\r\n                    <div>\r\n                        <div class=\"hangzhantipbj\">\r\n                            <a href=\"http://www.qilabi.com\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("Images/banner1.jpg\" width=\"900px\" alt=\"2014珠海航展\"></a>\r\n                        </div>\r\n                        <div class=\"hangzhantipbj\">\r\n                            <div class=\"hangzhanbj_action\">\r\n                                <h4 class=\"airshow_tips\" title=\"珠海航展门票使用注意事项\">\r\n                                    珠海航展门票使用注意事项 <span>Action</span>\r\n                                </h4>\r\n                            </div>\r\n                            <ul class=\"ul_tips clearfix\">\r\n                                <li>1.门票使用有效期为2014年11月14号至11月16号(公众日)，任意一天使用，单次有效，每天开放时间09:00-17:00</li>\r\n                                <li>2.入场时需出示有效证件配合安全检查，如忘带证件可以走特殊通道，该通道配有很多摄像头</li>\r\n                                <li>3.所有人员均需购票入场，一人一票(不分年龄和身高)</li>\r\n                                <li>4.凡在奇比拉航展门票中心购买的门票，如发现门票不适用更改行程，支持退换，退票收20%手续费，换票收取差价。</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"hangzhantipbj hangzhantipnotop\">\r\n                            <div class=\"hangzhanbj_tips\">\r\n                                <h4 class=\"airshow_tips\" title=\"珠海航展门票温馨提示\">\r\n                                    温馨提示 <span>Tip</span>\r\n                                </h4>\r\n                            </div>\r\n                            <ul class=\"ul_tips clearfix\">\r\n                                <li>1.珠海航展门票不设折扣，没有所谓的内部票，航展公司内部人员都需要购票，切勿贪图便宜，购买假票照成不必要的麻烦</li>\r\n                                <li>2.奇比拉航展门票为珠海航展官方合作伙伴，在<a href=\"http://gzdaily.dayoo.com/html/2014-10/21/content_2778790.htm\"\r\n                                    rel=\"nofollow\" target=\"_blank\">广州日报</a> 、<a href=\"http://news.ifeng.com/a/20141021/42252802_0.shtml\"\r\n                                        rel=\"nofollow\" target=\"_blank\">凤凰网</a>、<a href=\"http://www.airshow.com.cn/cn/ptgz/GenAudience/201409/19963.html#footer\"\r\n                                            rel=\"nofollow\" target=\"_blank\"> 珠海航展公司官网</a>、南方都市报等其他主流媒体均相应有报道。可放心购买。</li>\r\n                                <li>3.航展门票哪买强？奇比拉航展门票专注航展10届，珠海航展门票销量遥遥领先。顺丰快递 一日三送</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"hangzhantipbj hangzhantipnotop\">\r\n                            <div class=\"hangzhanbj_step\">\r\n                                <h4 class=\"airshow_tips\" title=\"珠海航展门票温馨提示\">\r\n                                    航展门票购买流程 <span>Step</span>\r\n                                </h4>\r\n                            </div>\r\n                            <div class=\"ul_tips clearfix\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("images/step.jpg\" width=\"900px\" height=\"100px\" />\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\">\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
