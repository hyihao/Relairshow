<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.airshoworders" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>2014珠海航展门票:珠海航展门票购票仅需3步</title>\r\n    <meta content=\"珠海航展门票,2014珠海航展,珠海航展，航展门票\" name=\"keywords\">\r\n    <meta content=\"珠海航展门票购买仅需简单3步，选择航展门票，提交订单，购买成功，快递航展门票到手\" name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">   \r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">   \r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/cart.js\"></");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div class=\"hzbody cls_980 overhide\">\r\n        <h2 class=\"hz_itemlist_nva\">\r\n            珠海航展门票中心: <a href=\"/index.aspx\">珠海航展</a> &gt; <a href=\"/airshow.aspx\" target=\"_blank\"\r\n                title=\"航展门票\">航展门票</a>&gt; <a href='");
	templateBuilder.Append("<%linkurl(\"airshoworders\"%>");
	templateBuilder.Append("'> 珠海航展门票在线订购</a>\r\n        </h2>\r\n       \r\n        <div class=\" hangzhantipnotop\">\r\n            <div class=\"hangzhanbj_tips\">\r\n                <h4 class=\"airshow_tips\" title=\"珠海航展门票温馨提示\">\r\n                    珠海航展门票在线订购 <span>Buy</span>\r\n                </h4>\r\n            </div>\r\n               <div class=\"blank10\">\r\n        </div>\r\n            <a href=\"");
	templateBuilder.Append(linkurl("airshow"));

	templateBuilder.Append("\" title=\"2014珠海航展门票_奇比拉\"><img src=\"../../images/01.jpg\" alt=\"2014珠海航展门票_奇比拉\" width=\"960px\" /></a> \r\n               <div class=\"blank10\">\r\n        </div>\r\n            <ul class=\"ul_tips clearfix\">\r\n                <li>奇比拉航展门票为珠海航展官方合作伙伴，在<a href=\"http://gzdaily.dayoo.com/html/2014-10/21/content_2778790.htm\"\r\n                    rel=\"nofollow\" target=\"_blank\">广州日报头版</a> 、<a href=\"http://news.ifeng.com/a/20141021/42252802_0.shtml\"\r\n                        rel=\"nofollow\" target=\"_blank\">凤凰网</a>、<a href=\"http://www.airshow.com.cn/cn/ptgz/GenAudience/201409/19963.html#footer\"\r\n                            rel=\"nofollow\" target=\"_blank\"> 珠海航展公司官网</a>、南方都市报等其他主流媒体均相应有报道。可放心购买。</li>               \r\n            </ul>\r\n            \r\n        </div>\r\n        <div class=\"blank10\">\r\n        </div>\r\n        <div class=\"ticket_bd clearfix airshowMain\">\r\n            <h3>\r\n                航展门票购买仅需3步骤</h3>\r\n            <ol class=\"buy-process-bar steps-bar\">\r\n                <li class=\"step step--first step--current\" style=\"z-index: 2; color: #fff;\"><span\r\n                    class=\"step__num\">1.</span> 选择门票 <span class=\"arrow__background\"></span><span class=\"arrow__foreground\">\r\n                    </span></li>\r\n                <li class=\"step \" style=\"z-index: 1\"><span class=\"step__num\">2.</span> 填写订单 <span\r\n                    class=\"arrow__background\"></span><span class=\"arrow__foreground\"></span></li>\r\n                <li class=\"step step--last \"><span class=\"step__num\">3.</span> 购买成功 </li>\r\n            </ol>\r\n\r\n            <table width=\"928\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart_table\">\r\n      <tr>\r\n        <th width=\"64\"></th>\r\n        <th align=\"left\">商品名称</th>       \r\n        <th width=\"100\" align=\"center\">单价</th>\r\n        <th width=\"120\" align=\"center\">数量</th>       \r\n        <th width=\"100\" align=\"center\">金额小计</th>        \r\n      </tr>\r\n       ");
	DataTable hztickets = get_article_list("goods", 44, 12, "is_red=1 and img_url<>''");

	int modelt__loop__id=0;
	foreach(DataRow modelt in hztickets.Rows)
	{
		modelt__loop__id++;


	templateBuilder.Append("\r\n     \r\n      <tr>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(modelt["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(modelt["img_url"]) + "\"  class=\"img\" /></a></td>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(modelt["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(modelt["title"]) + "</a></td>\r\n        \r\n        <td align=\"center\">￥ <lable class=\"sell_price\" name=\"sell_price\">" + Utils.ObjectToStr(modelt["sell_price"]) + "</lable></td>\r\n        <td align=\"center\">\r\n         <a href=\"javascript:;\" class=\"reduce\" title=\"减一\" onclick=\"CartAddMinus(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '" + Utils.ObjectToStr(modelt["id"]) + "', -1);\">减一</a>\r\n          <input type=\"text\" name=\"goods_quantity\" id=\"goods_quantity_" + Utils.ObjectToStr(modelt["id"]) + "\" class=\"input\" style=\"width:30px;text-align:center;ime-mode:Disabled;\" value=\"0\" onblur=\"TotalCartAmount(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '" + Utils.ObjectToStr(modelt["id"]) + "');\" onkeypress=\"return (/[\\d]/.test(String.fromCharCode(event.keyCode)))\" />\r\n          <a href=\"javascript:;\" class=\"subjoin\" title=\"加一\" onclick=\"CartAddMinus(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '" + Utils.ObjectToStr(modelt["id"]) + "', 1);\">加一</a>\r\n        </td>\r\n       \r\n        <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥<label name=\"real_amount\" class=\"real_amount\">0</label></font></td>       \r\n \r\n      </tr>\r\n         ");
	}	//end for if

	templateBuilder.Append("        \r\n      <tr id=\"total_amount\">\r\n        <th colspan=\"9\" align=\"right\">\r\n          商品总金额（不含运费）：<font color=\"#FF0000\" size=\"2\" >￥<lable class=\"total_amount\" name=\"total_amount\" class=\"total_amount\">0</lable></font>元 &nbsp;&nbsp;\r\n        </th>\r\n      </tr>\r\n      \r\n	</table>\r\n     <div class=\"line20\"></div>\r\n      <div class=\"right\">\r\n      \r\n      <a class=\"btn btn-success marL10\" href=\"");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("\">马上去结算</a>\r\n    <script type=\"text/javascript\">\r\n        $(document).ready(function () {\r\n            var goods_id = '");
	templateBuilder.Append(Utils.ObjectToStr(m_t));
	templateBuilder.Append("';\r\n            if (goods_id) {\r\n                $('#goods_quantity_' + goods_id).val(1);\r\n                $.ajax({\r\n                    type: \"post\",\r\n                    url: '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("' + \"tools/submit_ajax.ashx?action=cart_menpiao_update\",\r\n                    data: {\r\n                        \"goods_id\": goods_id,\r\n                        \"goods_quantity\": 1\r\n                    },\r\n                    dataType: \"json\",\r\n                    beforeSend: function (XMLHttpRequest) {\r\n                        //发送前动作\r\n                    },\r\n                    success: function (data, textStatus) {\r\n                        if (data.status == 1) {\r\n                            \r\n                            updateForm($('#goods_quantity_' + goods_id));\r\n                        } else {\r\n                            alert(data.msg);\r\n                        }\r\n                    },\r\n                    error: function (XMLHttpRequest, textStatus, errorThrown) {\r\n                        alert(\"状态：\" + textStatus + \"；出错提示：\" + errorThrown);\r\n                    },\r\n                    timeout: 20000\r\n                });\r\n                return false;\r\n            }\r\n        });\r\n\r\n      \r\n    </");
	templateBuilder.Append("script>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\">\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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
