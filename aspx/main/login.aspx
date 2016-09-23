<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.login" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>会员登录_");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/usercenter.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/login_validate.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap \">\r\n  <div class=\"main_box\">\r\n    <h1 class=\"main_tit\">\r\n      会员登录<strong>Login</strong>\r\n    </h1>\r\n\r\n    <div class=\"login-box\">\r\n    <div class=\"left-box\">\r\n      <form id=\"loginform\" name=\"loginform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_login\">\r\n      <dl>\r\n        <dt>用户名：</dt>\r\n        <dd><input id=\"txtUserName\" name=\"txtUserName\" class=\"input txt\" type=\"text\" maxlength=\"50\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>密　码：</dt>\r\n        <dd><input id=\"txtPassword\" name=\"txtPassword\" class=\"input txt required\" type=\"password\" maxlength=\"100\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd>\r\n          <input id=\"chkRemember\" name=\"chkRemember\" class=\"checkbox\" type=\"checkbox\" style=\"vertical-align:middle\">\r\n          <label class=\"red\" for=\"chkRemember\">一周内自动登录</label>\r\n        </dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd>\r\n          <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_login\" value=\"登 录\" />\r\n          <a href=\"");
	templateBuilder.Append(linkurl("repassword","confirm"));

	templateBuilder.Append("\">忘记密码？</a>\r\n        </dd>\r\n      </dl>\r\n      <dl id=\"msgtips\">\r\n        <dt></dt>\r\n        <dd></dd>\r\n      </dl>\r\n      <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(turl));
	templateBuilder.Append("\" />\r\n      </form>\r\n      <!--第三方登录-->\r\n      <div class=\"oauth_inner\">\r\n        <label>其它登录方式</label>\r\n        <div class=\"oauth_list\">\r\n          ");
	DataTable oauth_list = get_oauth_app_list(0, "");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n          ");
	foreach(DataRow dr in oauth_list.Rows)
	{

	templateBuilder.Append("\r\n          <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/oauth/" + Utils.ObjectToStr(dr["api_path"]) + "/index.aspx\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></a>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n      </div>\r\n      <!--/第三方登录-->\r\n    </div>\r\n    <div class=\"center-box\"></div>\r\n    <div class=\"right-box\">\r\n      <p class=\"note\">我们诚挚地邀请您加入<br />珠海航展门票销售中心</p>\r\n      <p>如果您还没有会员账户</p>\r\n      <p class=\"button\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">立即注册</a>\r\n      </p>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
