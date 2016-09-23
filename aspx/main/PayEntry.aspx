<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.payentry" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    <title>支付中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
	templateBuilder.Append("script>\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/changlong/main.css\"\r\n        rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/cart_menpiao.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            tabs('#goodsTabs', 'click');\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div class=\"narrow_page menpiao_order\">\r\n        <div class=\"head_nav\">\r\n            <!--Header-->\r\n            ");

	templateBuilder.Append("<div class=\"mini_nav_wrap clsPanle\">\r\n                <div class=\"mini_logo\">\r\n                    <a href=\"../index.aspx\"></a>\r\n                </div>\r\n                <ul id=\"menuNav\">\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("changlong"));

	templateBuilder.Append("\">海洋王国</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("changlong"));

	templateBuilder.Append("#fun\">主题乐园</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("changlongmp"));

	templateBuilder.Append("\">门票预订</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("menpiaoorder",296));

	templateBuilder.Append("\">跨年门票</a></li>\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("changlong"));

	templateBuilder.Append("#time\">表演时间</a></li>\r\n                    <!--<li><a href=\"#\">景点攻略</a></li>\r\n                    <li><a href=\"#\" title=\"长隆马戏\">国际马戏城</a></li>-->\r\n                </ul>\r\n            </div>");


	templateBuilder.Append("\r\n            <!--/Header-->\r\n        </div>\r\n        <div class=\"clearfix\">\r\n        </div>\r\n        <div class=\"clsPanle mainbody orderbody\" id=\"mainbody\">\r\n            <div class=\"clongmenpiao\">\r\n                <ol class=\"progress_bar clearfix\">\r\n                    <li class=\"complete\"><i></i>选择产品</li>\r\n                    <li class=\"complete\"><i></i>填写与核对</li>\r\n                    <li class=\"complete\"><i></i>支付</li>\r\n                    <li><i></i>成功提交</li>\r\n                </ol>\r\n                <div class=\"pay_box clearfix\">\r\n                    <div class=\"payinfo_price \">\r\n                        <p>\r\n                            订单金额：</p>\r\n                        <p>\r\n                            <span class=\"price\"><dfn>¥</dfn>");
	templateBuilder.Append(Utils.ObjectToStr(model.order_amount));
	templateBuilder.Append("</span></p>\r\n                    </div>\r\n                    <div class=\"pay_title\">\r\n                        <p>\r\n                            珠海长隆海洋王国跨年狂欢</p>\r\n                    </div>\r\n                </div>\r\n                <h2 class=\"paytitle\">\r\n                    <strong>您还需要支付:</strong><span class=\"price\"><dfn>¥</dfn>");
	templateBuilder.Append(Utils.ObjectToStr(model.real_amount));
	templateBuilder.Append("</span></h2>\r\n                <div id=\"goodsTabs\">\r\n                    <div id=\"tab_head\" class=\"pro-tabs nobgcolor clearfix\">\r\n                        <ul class=\"clearfix\">\r\n                            <li><a class=\"current\" href=\"javascript:;\">支付宝</a></li>\r\n                            <li><a href=\"javascript:;\">财付通</a></li>\r\n                            <li><a href=\"javascript:;\">网银支付</a></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"tab_inner clspaytype\">\r\n                        <ul class=\"paylist clearfix\">\r\n                            <li class=\"payitem\" title=\"\">\r\n                                <input type=\"radio\" id=\"rbAlipay\" class=\"radioPay\" name=\"rbPaymentWay\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/alipay/index.aspx\"\r\n                                    checked=\"checked\">\r\n                                <label id=\"pay_lbl_ThirdPay_Alipay\" for=\"rbAlipay\" title=\"支付宝\" class=\"more_alipay\">\r\n                                </label>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"tab_inner clspaytype\" style=\"display: none\">\r\n                        <ul class=\"paylist clearfix\">\r\n                            <li class=\"payitem\" title=\"\">\r\n                                <input type=\"radio\" id=\"rdTenPay\" class=\"radioPay\" name=\"rbPaymentWay\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/tenpay/index.aspx\">\r\n                                <label id=\"pay_lbl_ThirdPay_TenPay\" for=\"rdTenPay\" title=\"财付通\" class=\"more_tenpay\">\r\n                                </label>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"tab_inner clspaytype\" style=\"display: none\">\r\n                        <ul class=\"paylist clearfix\">\r\n                            <li class=\"payitem\" title=\"\">\r\n                                <input type=\"radio\" id=\"rdOnlinePay\" class=\"radioPay\" name=\"rbPaymentWay\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/chinabank/index.aspx\">\r\n                                <label id=\"pay_lbl_ThirdPay_online\" for=\"rdOnlinePay\" title=\"网银在线\" class=\"more_onlinepay\">\r\n                                </label>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n                <div class=\"paysubmit\">\r\n                    <form id=\"pay_form\" name=\"pay_form\" method=\"post\" action=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/alipay/index.aspx\"\r\n                    target=\"_blank\">\r\n                    <input type=\"hidden\" id=\"payType\" value=\"alipay\" />\r\n                    <input id=\"pay_order_no\" name=\"pay_order_no\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.order_no));
	templateBuilder.Append("\" />\r\n                    <input id=\"pay_order_amount\" name=\"pay_order_amount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.order_amount));
	templateBuilder.Append("\" />\r\n                    <input id=\"pay_user_name\" name=\"pay_user_name\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.accept_name));
	templateBuilder.Append("\" />\r\n                    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"珠海长隆海洋王国门票购买_奇比拉\" />\r\n                    <input type=\"submit\" value=\"立即支付\" class=\"btn_paysubmit\" id=\"btnNextCommand\" />\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--footer-->\r\n        ");

	templateBuilder.Append("<div class=\"blank15\">\r\n</div>\r\n<div class=\"footerseo clearfix\">\r\n    <div class=\"footerseo_con\">\r\n        <div class=\"seo_title clearfix\">\r\n            <h3 class=\"seotitle2\">\r\n                珠海长隆海洋王国门票</h3>\r\n            <a class=\"more\" target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\">全部 &gt;</a></div>\r\n        <div class=\"linklist clearfix\">\r\n            ");
	DataTable navtickets = get_article_list("goods", 48,6, "");

	int navticket__loop__id=0;
	foreach(DataRow navticket in navtickets.Rows)
	{
		navticket__loop__id++;


	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("menpiaoorder",Utils.ObjectToStr(navticket["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(navticket["title"]) + " </a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n    </div>\r\n   \r\n    <div class=\"footerseo_con\">\r\n        <div class=\"seo_title clearfix\">\r\n            <h3 class=\"seotitle2\">\r\n                友情链接</h3>\r\n        </div>\r\n        <div class=\"linklist clearfix\">\r\n            ");
	DataTable linkList1 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0 and is_image=0 and is_red=0");

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

	templateBuilder.Append("\r\n       </dl>\r\n\r\n        <dl>\r\n            <dt>购票便捷</dt>\r\n            <dd>无须注册</dd>\r\n            <dd>快速出票</dd>\r\n            <dd>快捷支付</dd>\r\n            <dd>顺丰快递</dd>\r\n            <dd>一日三送</dd>            \r\n       </dl>    \r\n\r\n        <dl>\r\n            <dt>服务提供</dt>\r\n            <dd>官网授权</dd> \r\n            <dd>海洋王国</dd>\r\n            <dd>珠海长隆马戏</dd>  \r\n            <dd>珠海旅游景区</dd>    \r\n            <dd>看航展游长隆泡温泉</dd>     \r\n       </dl>       \r\n        <dl>\r\n            <dt>客服热线</dt>\r\n            <dd>400 676 0405</dd>\r\n            <dd>15989768355</dd> \r\n            <dd>0756-6855591</dd>\r\n            <dd></dd>                     \r\n       </dl>\r\n         <dl>\r\n            <dt>微信关注</dt>\r\n            <dd><img src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/Images/weixin.jpg\" width=\"175px\" /></dd>\r\n                            \r\n       </dl>\r\n\r\n    </div>\r\n</div>\r\n\r\n<div class=\"copyright\">\r\n    <span class=\"\">© 版权所有2003-2014 官方授权珠海航展门票销售商 qibila 提供最专业的珠海航展门票预订-奇比拉有限公司, All rights\r\n        reserved.</span><br />\r\n    粤ICP备14066312号-1 欢迎合作:qibila#163.com|<script src=\"http://s23.cnzz.com/stat.php?id=1253259831&web_id=1253259831&show=pic\"  language=\"JavaScript\"></");
	templateBuilder.Append("script>\r\n</div>\r\n\r\n<div id=\"online\" class=\"online\">\r\n    <div class=\"onlinetext\">\r\n        <a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=775402554&amp;site=qq&amp;menu=yes\"\r\n            class=\"q4\" target=\"_blank\" title=\"航展门票咨询Sugar\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=513264774&amp;site=qq&amp;menu=yes\"\r\n                class=\"q2\" target=\"_blank\" title=\"航展门票咨询Ava\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=337662980&amp;site=qq&amp;menu=yes\"\r\n                    class=\"q3\" target=\"_blank\" title=\"航展门票咨询客服\"></a><a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=149228102&amp;site=qq&amp;menu=yes\"\r\n                        class=\"q1\" target=\"_blank\" title=\"航展门票投诉建议\"></a>\r\n    </div>\r\n</div>\r\n\r\n");


	templateBuilder.Append("\r\n        <!--/footer-->\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
