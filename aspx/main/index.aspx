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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">   \r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("</title>\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\"\r\n        rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/scrollTop.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/layer/layer.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/nicescroll.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\"#sidebarscroll\").niceScroll({ touchbehavior: false, cursorcolor: \"#7C7C7C\", cursoropacitymax: 0.6, cursorwidth: 5 });\r\n            //站内通知消息\r\n            var webmessage = '珠海航展公众日参展时间为：2014年11月14号至2014年11月16号，近日珠海航展门票销售非常火爆,由于航展门票限量发售，航展公司所发售的优惠票已经到顶，库存告急，尚未购买的用户请抓紧时间购买。以免耽误行程！';\r\n            if (webmessage != \"\") {\r\n                $.dialog({\r\n                    id: 'webmessage',\r\n                    title: '珠海航展门票限量发售 库存告急',\r\n                    content: '<span style=\"line-height:2.0em;font-size:12px;font-family:Microsoft YaHei;\">' + webmessage + '</span>',\r\n                    width: 300,\r\n                    left: '0%',\r\n                    top: '100%',\r\n                    max: false,\r\n                    min: false,\r\n                    fixed: true,\r\n                    drag: false,\r\n                    resize: false\r\n                });\r\n            }\r\n        });\r\n\r\n</");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div id=\"sidebarscroll\" class=\"sidebar-nav\"></div>\r\n    <div class=\"hzbody\">\r\n       <div class=\"hztop\">\r\n            ");
	DataTable ad_link = GetTopAdLinkList(4,1);

	templateBuilder.Append("\r\n            <div class=\"hzt_left\" id=\"hangzhan\">\r\n                <div id=\"hangzhan_pic\">\r\n                    <div id=\"hangzhan_piclist\" style=\"left: 0; top: 0;\">\r\n                        <ul>\r\n                            ");
	int adlink__loop__id=0;
	foreach(DataRow adlink in ad_link.Rows)
	{
		adlink__loop__id++;


	templateBuilder.Append("\r\n                            <li id=\"playBig");
	templateBuilder.Append(Utils.ObjectToStr(adlink__loop__id));
	templateBuilder.Append("\"><a href=\"" + Utils.ObjectToStr(adlink["site_url"]) + "\" target=\"_blank\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("" + Utils.ObjectToStr(adlink["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(adlink["adName"]) + "\"></a></li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                    <div id=\"hangzhan_opdiv\">\r\n                    </div>\r\n                    <div id=\"hangzhan_tx\">\r\n                        <ul>\r\n                            ");
	int adlink1__loop__id=0;
	foreach(DataRow adlink1 in ad_link.Rows)
	{
		adlink1__loop__id++;


	templateBuilder.Append("\r\n                            <li id=\"playIntro");
	templateBuilder.Append(Utils.ObjectToStr(adlink1__loop__id));
	templateBuilder.Append("\" class=\"");
	if (adlink1__loop__id==1)
	{

	templateBuilder.Append("current");
	}
	else
	{

	templateBuilder.Append(" normal");
	}	//end for if

	templateBuilder.Append("\">\r\n                                <h1>\r\n                                    <a href=\"" + Utils.ObjectToStr(adlink1["site_url"]) + "\" target=\"_blank\">" + Utils.ObjectToStr(adlink1["adName"]) + "</a></h1>\r\n                            </li>\r\n                            ");
	}	//end for if

	templateBuilder.Append("\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <div id=\"hangzhan_btn\">\r\n                    <ul>\r\n                        ");
	int adlink2__loop__id=0;
	foreach(DataRow adlink2 in ad_link.Rows)
	{
		adlink2__loop__id++;


	templateBuilder.Append("\r\n                        <li id=\"playSmall");
	templateBuilder.Append(Utils.ObjectToStr(adlink2__loop__id));
	templateBuilder.Append("\" class=\"");
	if (adlink2__loop__id==1)
	{

	templateBuilder.Append("current");
	}
	else
	{

	templateBuilder.Append(" normal ");
	}	//end for if

	templateBuilder.Append("\">\r\n                            <a href=\"" + Utils.ObjectToStr(adlink2["site_url"]) + "\">\r\n                                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("" + Utils.ObjectToStr(adlink2["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(adlink2["adName"]) + "\"></a> </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\"hzt_right\" id=\"hzt_right\">\r\n              <h3 class=\"hotele\">\r\n                珠海航展指南 <a href=\"");
	templateBuilder.Append(linkurl("news_list",4));

	templateBuilder.Append("\" title=\"珠海航展指南\"><i class=\"adisplay\">珠海航展时间</i></a>\r\n            </h3>\r\n            <ul class=\"hznav\">\r\n                ");
	DataTable zhinans = get_article_list("news", 4, 10, "status=0");

	int zhinan__loop__id=0;
	foreach(DataRow zhinan in zhinans.Rows)
	{
		zhinan__loop__id++;


	templateBuilder.Append("\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(zhinan["id"])));

	templateBuilder.Append("\" ");
	if (Utils.ObjectToStr(zhinan["is_red"])=="1")
	{

	templateBuilder.Append("style=\"color:red\"");
	}	//end for if

	templateBuilder.Append(" > " + Utils.ObjectToStr(zhinan["title"]) + "</a></li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n            </div>\r\n        </div>\r\n    </div>  \r\n    <div class=\"meze\">\r\n        <div class=\"hzleft\">\r\n            <div class=\"meft\">\r\n                <div class=\"menu_fk\">\r\n                    <div class=\"cls_munu_t\">\r\n                        <h2>\r\n                            珠海航展抢先看</h2>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("news_list",1));

	templateBuilder.Append("\" title=\"珠海航展抢先\"><i class=\"adisplay\">2014航展,航展资讯</i></a>\r\n                    </div>\r\n                    ");
	DataTable rednews = get_article_list("news", 1, 3, "status=0");

	int newsdr11__loop__id=0;
	foreach(DataRow newsdr11 in rednews.Rows)
	{
		newsdr11__loop__id++;


	templateBuilder.Append("\r\n                    <div class=\"menu_fkc\">\r\n                        <img alt=\"" + Utils.ObjectToStr(newsdr11["title"]) + "\" src=\"" + Utils.ObjectToStr(newsdr11["img_url"]) + "\" width=\"153\" height=\"100\">\r\n                        <ul class=\"clearfix\">\r\n                            <li class=\"height20\"><a class=\"width153\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\">\r\n                                " + Utils.ObjectToStr(newsdr11["title"]) + "</a></li>\r\n                            <li class=\"height100\">" + Utils.ObjectToStr(newsdr11["zhaiyao"]) + "</li>\r\n                        </ul>\r\n                        <h4 class=\"hmore\">\r\n                            <a class=\"fkc_more \" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\">READ MORE</a></h4>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"menu_fk\">\r\n                    <div class=\"cls_munu_t\">\r\n                        <h2>\r\n                            珠海航展Focus</h2>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("news_list",3));

	templateBuilder.Append("\" title=\"珠海航展回顾\"><i class=\"adisplay\">航展回顾，第九届航展</i></a>\r\n                    </div>\r\n                    ");
	DataTable focusnews = get_article_list("news", 3, 4, "status=0");

	int focusnew__loop__id=0;
	foreach(DataRow focusnew in focusnews.Rows)
	{
		focusnew__loop__id++;


	templateBuilder.Append("\r\n                    <div class=\"menu_fkc4\">\r\n                        <ul class=\"clearfix\">\r\n                            <li class=\"focustitle\"><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(focusnew["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(focusnew["title"]) + "</a></li>\r\n                            <li class=\"height40 focuscont\">" + Utils.ObjectToStr(focusnew["zhaiyao"]) + "</li>\r\n                        </ul>\r\n                        <div class=\"fkc4_more\">\r\n                            <span class=\"f_r\">" + Utils.ObjectToStr(focusnew["add_time"]) + "</span> <span><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(focusnew["id"])));

	templateBuilder.Append("\">\r\n                                [阅读全文]</a></span></div>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"menu_fk\">\r\n                    <div class=\"cls_munu_t\">\r\n                        <h2>\r\n                            珠海航展攻略</h2>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("news_list",33));

	templateBuilder.Append("\" title=\"航展自由行\"><i class=\"adisplay\">2014航展攻略,第9届航展</i></a>\r\n                    </div>\r\n                    ");
	DataTable gonglvs = get_article_list("news", 33, 4, "status=0");

	int gonglv__loop__id=0;
	foreach(DataRow gonglv in gonglvs.Rows)
	{
		gonglv__loop__id++;


	templateBuilder.Append("\r\n                    <div class=\"menu_fkc4\">\r\n                        <ul>\r\n                            <li class=\"focustitle\"><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(gonglv["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(gonglv["title"]) + "</a></li>\r\n                            <li class=\"height40 focuscont\">" + Utils.ObjectToStr(gonglv["zhaiyao"]) + "</li>\r\n                        </ul>\r\n                        <div class=\"fkc4_more\">\r\n                            by <span>" + Utils.ObjectToStr(gonglv["author"]) + "</span> | " + Utils.ObjectToStr(gonglv["add_time"]) + "</div>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"menu_fk\">\r\n                    <div class=\"cls_munu_t\">\r\n                        <h2>\r\n                            珠海航展精彩图片</h2>\r\n                        <a href=\"#\" title=\"航展自由行\"><i class=\"adisplay\">2014航展攻略,第10届航展</i></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"mecn\">\r\n                <div class=\"menu_ck\" id=\"voide\">\r\n                   \r\n                    <a href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\" title=\"珠海航展购买\"><i class=\"adisplay\">2014航展</i></a>\r\n                      <h3 class=\"hotele\" >\r\n                航展表演视频</h3>\r\n            ");
	DataTable shipings = get_article_list("news", 41, 10, "status=0","sort_id desc");

	int shiping__loop__id=0;
	foreach(DataRow shiping in shipings.Rows)
	{
		shiping__loop__id++;


	templateBuilder.Append("\r\n                <dl class=\"hzt_r_dl\">\r\n                    <dt mth=\"" + Utils.ObjectToStr(shiping["zhaiyao"]) + "\" tth=\"" + Utils.ObjectToStr(shiping["title"]) + "\">\r\n                        <img src=\"" + Utils.ObjectToStr(shiping["img_url"]) + "\"></dt>\r\n                    <dd>\r\n                        <h2>\r\n                            " + Utils.ObjectToStr(shiping["seo_title"]) + "\r\n                        </h2>\r\n                        <span class=\"hzt_r_span\">" + Utils.ObjectToStr(shiping["title"]) + "</span>\r\n                    </dd>\r\n                </dl>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                 \r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"hzt_imgmain clearfix\">\r\n                <div class=\"hzt_leftimg\">\r\n                    ");
	DataTable redphoto = get_article_list("photo", 0, 9, "status=0 ");

	int photodr1__loop__id=0;
	foreach(DataRow photodr1 in redphoto.Rows)
	{
		photodr1__loop__id++;


	templateBuilder.Append("\r\n                    <div class=\"hzimgitem\">\r\n                        <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo_show",Utils.ObjectToStr(photodr1["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(photodr1["title"]) + "\"\r\n                            class=\"spic_1\">\r\n                            <img width=\"275\" height=\"245\" src=\"" + Utils.ObjectToStr(photodr1["img_url"]) + "\">\r\n                            <span class=\"unmissable-desc\"><span class=\"ititle\">" + Utils.ObjectToStr(photodr1["title"]) + "</span>" + Utils.ObjectToStr(photodr1["zhaiyao"]) + "\r\n                            </span></a>\r\n                    </div>\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"merg\">\r\n           \r\n          \r\n\r\n            <h3 class=\"hotele\">\r\n                航展门票最新订单  <a href=\"");
	templateBuilder.Append(linkurl("queryorder"));

	templateBuilder.Append("\"  title=\"航展门票订单查询\">订单查询</a></h3>\r\n            <div class=\"menu_rk\">\r\n                <p>\r\n                    <span>航展门票最新评论</span>\r\n                </p>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">谭***</span> <span class=\"f_r\">\r\n                            2014年10月9日</span></dt>\r\n                        <dd>\r\n                            上届去了，这届航展票也收到了，歼十的性能真不错啊，机动性不比美俄三代机差，尾冲的角度很大，垂直爬升也很犀利，可见推重比不是盖的。多机编队的距离貌似也很近，八一队的训练水平也不错~自豪~</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">姚*** </span><span class=\"f_r\">\r\n                            2014年10月9日</span></dt>\r\n                        <dd>\r\n                            刚好是周末。买了张家庭票，带小孩子去看，增加点爱国意识</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_w\"></span><span class=\"f_l\">李*** </span><span class=\"f_r\">\r\n                            2014年10月9日</span></dt>\r\n                        <dd>\r\n                            帮同事买的航展家庭票，居然不会上网....囧</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">郑*** </span><span class=\"f_r\">\r\n                            2014年10月8日</span> </dt>\r\n                        <dd>\r\n                            本来之前还犹豫到底去不去，看了网站第二个视频一下子搞的我热血沸腾，果断搞张个人票，歼十表演很精彩。第二次去珠海了，北京来一趟不容易，希望在情侣路还能艳遇。</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">许***</span> <span class=\"f_r\">\r\n                            2014年10月8日</span></dt>\r\n                        <dd>\r\n                            2010年就想看了?可惜那时候出国了,现在得手2张带老婆一起看，我的航展不是梦，咩哈哈~</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">甘*** </span><span class=\"f_r\">\r\n                            2014年10月8日</span></dt>\r\n                        <dd>\r\n                            小学的时候梦想当名飞行员，到了工作了还没去看过航展，这次去定了。</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">钟***</span> <span class=\"f_r\">\r\n                            2014年10月8日</span></dt>\r\n                        <dd>\r\n                            下了2张航展优惠票门票，打算跟女朋友一起去看，2014要来了赶紧把钱花了。票收到了</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">黄*** </span><span class=\"f_r\">\r\n                            2014年10月10日</span></dt>\r\n                        <dd>\r\n                            票搞下来了，这下可以睡个安稳觉了。快递很快，我以为要等到明天，结果今天下午送到了。</dd>\r\n                    </dl>\r\n                </div>\r\n                <div class=\"menu_rkc\">\r\n                    <dl>\r\n                        <dt><span class=\"dd_img dd_img_m\"></span><span class=\"f_l\">赵*** </span><span class=\"f_r\">\r\n                            2014年10月10日</span></dt>\r\n                        <dd>\r\n                            力挺珠海航展，前排插入，票到手了，很精美</dd>\r\n                    </dl>\r\n                </div>\r\n            </div>\r\n            <div class=\"menu_rk\">\r\n                <p>\r\n                    <span>航展酒店提前订</span>\r\n                </p>\r\n            </div>\r\n            <a href=\"http://u.ctrip.com/union/redirect.aspx?jt=FD4E829224DE83432EEB0A90145715A1&amp;acct=0657B5E62F353FB657F5CBF4E3FFEAE33D359C13CF8AB0C328959A40CDA4B7A22DC8C0E1F6B841CC&amp;ouid=\"\r\n                target=\"_blank\">\r\n                <img src=\"http://pages.ctrip.com/web alliance/ads on b2b/aug-ctrip/300-250.jpg\" border=\"0\"></a>\r\n        </div>\r\n    </div>\r\n    <!--Header-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\"#voide dl dt\").each(function (a, b) {\r\n                $(b).click(function () {\r\n                    $(\"#shichengvideo\").html('<embed src=\"' + $(b).attr(\"mth\") + '\" isAutoPlay=\"true\"  allowFullScreen=\"true\" quality=\"high\" width=\"1000\" height=\"526\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>');\r\n                    var i = $.layer({\r\n                        type: 1,\r\n                        title: [$(b).attr(\"tth\"), true],\r\n                        fix: false,\r\n                        offset: ['50px', ''],\r\n                        area: ['1000px', '560px'],\r\n                        page: { dom: '#shichengvideo' }\r\n                    });\r\n                });\r\n            });\r\n            setTimeout(\"doatim()\", \"10000\");\r\n        })\r\n\r\n        function doatim() {\r\n            var ww = $(window).width();\r\n            var wh = $(window).height();\r\n            $(\"#imga\").show().animate({ top: \"0px\", left: ww / 2 }, 5000)\r\n                      .animate({ top: wh / 3, left: ww }, 5000).css(\"optcity\", \"0.9\")\r\n                      .animate({ top: ww, left: wh / 4 }, 5000).css(\"optcity\", \"0.3\")\r\n                       .animate({ top: wh / 2, left: ww / 2 }, 5000).css(\"optcity\", \"0.8\")\r\n                      .fadeOut(\"slow\");\r\n        }\r\n\r\n    </");
	templateBuilder.Append("script>\r\n    <div id=\"shichengvideo\">\r\n    </div>\r\n  <!--  <div class=\"logonwarp clearfix\">\r\n        <div class=\"infro\">\r\n            <div id=\"nor_login\" style=\"display: block\">\r\n                <p class=\"title\">\r\n                    登录奇比拉</p>\r\n                <div class=\"username\" id=\"username_div\">\r\n                    <span></span>\r\n                    <input type=\"text\" name=\"txtUsername\" id=\"txtUsername\" value=\"\" utype=\"\" maxlength=\"40\"\r\n                        autocomplete=\"off\" title=\"请输入用户名\" onfocus=\"focus_username()\" errordata=\"0\" onkeyup=\"return txtPassword_keyDown(event,this);\"\r\n                        tabindex=\"1\">\r\n                    <label id=\"userReplacer\" class=\"pwdReplace\" style=\"display: block;\" for=\"txtUsername\">\r\n                        邮箱/昵称/手机号码</label></div>\r\n                <p class=\"tips winerror02\" id=\"user_mindstyle\">\r\n                    <span id=\"liDivErrorMessage\" style=\"display: none;\">请输入邮箱地址/昵称/手机号码</span>\r\n                </p>\r\n            </div>\r\n            <div class=\"password\" id=\"password_div\">\r\n                <span></span>\r\n                <input class=\"pass\" type=\"password\" id=\"txtPassword\" name=\"txtPassword\" title=\"请输入密码\"\r\n                    maxlength=\"20\" autocomplete=\"off\" onkeyup=\"return txtPassword_keyDown(event,this)\"\r\n                    errordata=\"0\" onfocus=\"focus_pass()\" tabindex=\"2\"><label id=\"pwdReplacer\"\r\n                        class=\"pwdReplace\" style=\"display: block;\" for=\"txtPassword\">密码</label></div>\r\n            <p class=\"tips\" id=\"pass_mindstyle\">\r\n                <span id=\"login_password_error\" style=\"display: none\">请填写长度为6-20个字符密码</span> \r\n            </p>\r\n            <div class=\"code_wrap\" id=\"inputcode\" style=\"display: none\">\r\n                <div class=\"code\" id=\"vcode_model\">\r\n                    <span></span>\r\n                    <input type=\"text\" name=\"txtVerifyCode\" id=\"txtVerifyCode\" title=\"请输入验证码\" maxlength=\"4\"\r\n                        onkeyup=\"return txtPassword_keyDown(event,this)\" errordata=\"0\" autocomplete=\"off\"\r\n                        tabindex=\"3\"><label id=\"codeReplacer\" class=\"pwdReplace\" style=\"display: block;\"\r\n                            for=\"txtVerifyCode\">验证码</label></div>\r\n                <a href=\"javascript:show_vcode('imgVcode');\" class=\"code_pic\" tabindex=\"4\">\r\n                    <img id=\"imgVcode\"></a><a href=\"javascript:show_vcode('imgVcode');\" style=\"line-height: 30px;\"\r\n                        tabindex=\"5\">换张图</a>\r\n            </div>\r\n            <p class=\"tips_code\" id=\"vcode_mindstyle\" style=\"display: none;\">\r\n                <span id=\"login_vcode_error\" style=\"display: none\">请填写图片中的字符，不区分大小写</span></p>\r\n            <p class=\"auto_login\">\r\n                <a href=\"lostpassword.php\" tabindex=\"7\">忘记密码？</a><input type=\"checkbox\" id=\"autologin\"\r\n                    name=\"autologin\" class=\"auto_box\" onfocus=\"this.blur();\"><input type=\"hidden\" id=\"ispersist\"\r\n                        name=\"ispersist\" value=\"off\"><span style=\"\">七天内自动登录</span><span class=\"safe\" style=\"display: none;\">请勿在公用电脑上勾选此选项</span></p>\r\n            <p class=\"button\">\r\n                <a href=\"javascript:void(0);\" onclick=\"javascript:sign_check_and_submit();\" tabindex=\"6\">\r\n                    登&nbsp;&nbsp;&nbsp;&nbsp;录</a></p>\r\n            <p class=\"register\" id=\"immedate_register\" style=\"display: block\">\r\n                <a href=\"register.php?returnurl=http://shopadm4.dangdang.com/shop_preview/store.php?sid=6078&amp;act=subject&amp;pid=26306\"\r\n                    class=\"register_btn\">立即注册</a><span>还不是当当用户？</span></p>\r\n            <p class=\"register\" id=\"change_other\" style=\"display: none\">\r\n                <a id=\"other_login\" class=\"other\">使用其他账号登录</a><a href=\"register.php?returnurl=http://shopadm4.dangdang.com/shop_preview/store.php?sid=6078&amp;act=subject&amp;pid=26306\"\r\n                    class=\"register_btn\">立即注册</a><span>还不是奇比拉用户？</span></p>\r\n            <div class=\"login_btn\" id=\"submit_signin_div\">\r\n                <input type=\"hidden\" id=\"post_type\" name=\"post_type\" value=\"normal\">\r\n                <input type=\"hidden\" id=\"login_type\" name=\"login_type\" value=\"0\">\r\n                <input type=\"hidden\" name=\"action\" id=\"action\" value=\"login\">\r\n                <input type=\"hidden\" name=\"view\" id=\"view\" value=\"CYWaGr0EQG4=\">\r\n                <input type=\"hidden\" id=\"A12B56CD78EF90G\" name=\"A12B56CD78EF90G\" value=\"GHaKqXh2S/l7zZ0rJBXoJA==\">\r\n                <input type=\"hidden\" id=\"wdvalidatetoken\" name=\"wdvalidatetoken\" value=\"B44fn4FUfC3vXCcQbJFJtFGlDH/eUTku410TabvCd6ukwy7VqkfPcg==\">\r\n                <input type=\"hidden\" id=\"auth_human_id\" name=\"auth_human_id\" value=\"lw7nwcCFeWt8hYrzfpMiIj4cCcFdgphgsAyWbdOtoyBJdiIXGMYH+rvc1E1zIw3A0BsQQAQk07yKaFlaEI8ucoe4Cd8YSPlJemavgN4ywW7TrxbNsAAI1fBoHoXcrnvi\">\r\n                <input type=\"hidden\" name=\"returnurl\" id=\"returnurl\" value=\"http://shopadm4.dangdang.com/shop_preview/store.php?sid=6078&amp;act=subject&amp;pid=26306\">\r\n                <input type=\"submit\" id=\"btnSign\" style=\"display: none;\">\r\n            </div>\r\n            <div class=\"partner clearfix\" id=\"share_login\" style=\"display: block; margin-top: 54px\">\r\n                <p>\r\n                    使用合作网站登录奇比拉</p>\r\n                <ul>\r\n                    <li><a href=\"https://login.dangdang.com/login_third_alipay/login_alipay.aspx?returnurl=http://shopadm4.dangdang.com/shop_preview/store.php?sid=6078&amp;act=subject&amp;pid=26306\"\r\n                        title=\"支付宝\">支付宝</a></li>\r\n                    <li><a href=\"javascript:toQzoneLogin();\" title=\"QQ\">ＱＱ</a></li>\r\n                    <li><a href=\"javascript:openWind();\" title=\"新浪微博\" id=\"open_sina_sign\">新浪微博</a></li>\r\n                    <li><a href=\"javascript:openWind_netease()\" title=\"网易\">网易</a></li>\r\n                    <li><a href=\"javascript:openWind_renren();\" title=\"人人网\">人人网</a></li>\r\n                    <li class=\"mr0\"><a href=\"javascript:openWind_baidu()\" title=\"百度\">百度</a></li>\r\n                    <li><a href=\"javascript:openWind_msn()\" title=\"MSN\">ＭＳＮ</a></li>\r\n                    <li><a href=\"javascript:openWind_fetion()\" title=\"飞信\">飞信</a></li>\r\n                    <li><a href=\"https://login.dangdang.com/login_third_jsmobile/login_jsmobile.aspx?returnurl=http://shopadm4.dangdang.com/shop_preview/store.php?sid=6078&amp;act=subject&amp;pid=26306\"\r\n                        title=\"江苏移动\">江苏移动</a></li>\r\n                    <li><a href=\"javascript:openWind_douban()\" title=\"豆瓣\">豆瓣</a></li>\r\n                    <li><a href=\"javascript:openWind_qh360()\" title=\"360\">３６０</a></li>\r\n                    <li class=\"mr0\"><a href=\"javascript:openWind_souhu()\" title=\"搜狐\">搜狐</a></li>\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <script>\r\n\r\n        var errorcode = \"\";\r\n        jQuery(document).ready(function () {\r\n            jQuery(\"#txtUsername\").focus(function () { focus_username() });\r\n            jQuery(\"body\").click(function () { check_password_change() });\r\n            jQuery(\"#txtPassword\").change(function () { focus_pass_change() });\r\n            jQuery(\"#txtUsername\").blur(function () { blur_username(); focus_user_change() });\r\n            jQuery(\"#txtPassword\").blur(function () { blur_password(); focus_pass_change() });\r\n            jQuery(\"#txtPassword\").focus(function () { focus_pass() });\r\n            if (jQuery('#txtUsername').val() != \"\") {\r\n                jQuery(\"#userReplacer\").css(\"display\", \"none\");\r\n                if (errorcode == 0) {\r\n                    jQuery('#txtPassword').focus();\r\n                }\r\n            } else {\r\n                jQuery('#txtUsername').focus();\r\n            }\r\n\r\n            jQuery(\"#txtPassword\").keypress(function (e) {\r\n                var c = e.keyCode || e.which;\r\n                var s = e.shiftKey;\r\n                if (((c >= 65 && c <= 90) && !s) || ((c >= 97 && c <= 122) && s)) {\r\n                    jQuery(\"#pass_mindstyle\").addClass(\"winerror\");\r\n                    jQuery(\"#password_div\").removeClass('focus').addClass('error');\r\n                    jQuery('#login_password_error').css(\"display\", \"none\");\r\n                    //jQuery(\"#casplockopen\").show();\r\n                    layer.tips('<b>大写锁定被打开</b>大写锁定可能会造成密码输入错误，可通过按CapsLock键盘将其关闭。', this, {\r\n                        guide: 2,\r\n                        maxWidth: 240,\r\n                        time: 5,\r\n                        closeBtn: [0, true]\r\n                    });\r\n                    return true;\r\n                }\r\n                if (c != 13) {\r\n                    jQuery('#password_div').removeClass(\"error\").addClass(\"focus\");\r\n                    jQuery('#login_password_error').css(\"display\", \"block\"); ;\r\n                    jQuery(\"#pass_mindstyle\").removeClass(\"winerror\");\r\n                    ;\r\n                }\r\n                return true;\r\n            });\r\n        });\r\n    \r\n        \r\n    </");
	templateBuilder.Append("script>-->\r\n    <div class=\"clear\">\r\n    </div>\r\n    <img src=\"http://www.qibila.com/imgs/jnstyle.gif\" style=\"position: fixed;right: 0;top: 40%; z-index:999;display:none\"  id=\"imga\" title=\"万圣节快乐\" alt=\"中国（珠海）航展\"/>\r\n\r\n    <script type=\"text/javascript\">        var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\"); document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fc60e4d4891cde5ef99cc098806ec5f51' type='text/javascript'%3E%3C/script%3E\")) </");
	templateBuilder.Append("script>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
