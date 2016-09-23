<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    ");
	string category_title = get_category_title(model.category_id,"门票订单");

	templateBuilder.Append("\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\">\r\n    <meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" name=\"author\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/jquery-1.8.0.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/json.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/datepicker/WdatePicker.js\"></");
	templateBuilder.Append("script>\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/changlong/main.css\"\r\n        rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/cart_menpiao.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div class=\"narrow_page menpiao_order\">\r\n        <div class=\"head_nav\">\r\n              <!--Header-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n        </div>\r\n        <div class=\"clearfix\">\r\n        </div>\r\n        <div class=\"clsPanle mainbody orderbody\" id=\"mainbody\">\r\n            <div class=\"clongmenpiao\">\r\n                <ol class=\"progress_bar\">\r\n                    <li class=\"complete\"><i></i>选择产品</li>\r\n                    <li class=\"complete\"><i></i>填写与核对</li>\r\n                    <li><i></i>支付</li>\r\n                    <li><i></i>成功提交</li>\r\n                </ol>\r\n                <div class=\"box_tit\">\r\n                    <h1 class=\"tit clearfix\">\r\n                        <em class=\"icon\"></em><em class=\"txt\">广东珠海横琴长隆海洋王国景区门票</em> <span class=\"base_price f_r\"\r\n                            style=\"margin-right: 10px\"><strong>总价：</strong> <dfn>¥</dfn><strong id=\"Strong1\">0</strong></span>\r\n                    </h1>\r\n                </div>\r\n                <div class=\"line10\">\r\n                </div>\r\n                <div class=\"top_warn\">\r\n                    <i>&nbsp;</i> <em>预订限制</em> <span>请在游玩 前1天 的17：00 前完成预订</span>\r\n                </div>\r\n                <form id=\"menpiaoorderform\" name=\"menpiaoorderform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=menpiao_order\">\r\n                <table class=\"ticket_item_inner clearfix\">\r\n                    <thead>\r\n                        <tr>\r\n                            <td style=\"padding-left: 26px;\">\r\n                                名称\r\n                            </td>\r\n                            <td width=\"110px\">\r\n                                门市价\r\n                            </td>\r\n                            <td width=\"130px\">\r\n                                优惠价\r\n                            </td>\r\n                            <td width=\"150px\">\r\n                                选择使用时间\r\n                            </td>\r\n                            <td width=\"120px\" align=\"center\">\r\n                                数量\r\n                            </td>\r\n                            <td width=\"110px\">\r\n                                单项总额\r\n                            </td>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr class=\"hover_bg\">\r\n                            <td class=\"ticket_item_title\" id='");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("'>\r\n                                <h3>\r\n                                    <a href=\"javascript:void(0)\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</a>\r\n                                </h3>\r\n                            </td>\r\n                            <td class=\"ticket_item_yprice strike\">\r\n                                <span class=\"del\"><dfn>¥</dfn><strong>" + Utils.ObjectToStr(model.fields["market_price"]) + "</strong></span>\r\n                            </td>\r\n                            <td class=\"ticket_item_sellprice\">\r\n                                <span class=\"base_price\"><dfn>¥</dfn><strong>" + Utils.ObjectToStr(model.fields["sell_price"]) + "</strong></span>\r\n                            </td>\r\n                            <td class=\"ticket_item_usedate\">\r\n                                ");
	if (model.seo_description=="15")
	{

	templateBuilder.Append("\r\n                                <input type=\"text\" class=\"Wdate\" data-params='");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("' onfocus=\"WdatePicker({onpicking:cartTotalAmount(this, ");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("),minDate:'%y-%M-{ %d+1 }',maxDate:'%y-%M-%ld',specialDays:[1,2,3,4,5],opposite:true,disabledDays:[0,6]})\"\r\n                                    readonly=\"readonly\" />\r\n                                ");
	}
	else if (model.seo_description=="06")
	{

	templateBuilder.Append("\r\n                                <input type=\"text\" class=\"Wdate\" data-params='");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("' onfocus=\"WdatePicker({onpicking:cartTotalAmount(this, ");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("),minDate:'%y-%M-{ %d+1 }',maxDate:'%y-%M-%ld',specialDays:[0,6],opposite:true,disabledDays:[1,2,3,4,5]})\"\r\n                                    readonly=\"readonly\" />\r\n                                ");
	}
	else if (model.seo_description=="2014-12-31")
	{

	templateBuilder.Append("\r\n                                <input type=\"text\" class=\"Wdate\" data-params='");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("' onfocus=\"WdatePicker({ onpicking:cartTotalAmount(this, ");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("),minDate:'%y-%M-d',maxDate:'%y-%M-%ld',disabledDates:[31],opposite:true })\"\r\n                                    readonly=\"readonly\" />\r\n                                ");
	}
	else
	{

	templateBuilder.Append("\r\n                                <input type=\"text\" class=\"Wdate\" data-params='");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("' onfocus=\"WdatePicker({ onpicking:cartTotalAmount(this, ");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("),dateFmt:'yyyy-MM-dd',minDate:'%y-%M-{ %d+1 }',maxDate:'%y-%M-%ld'})\"\r\n                                    readonly=\"readonly\" />\r\n                                ");
	}	//end for if

	templateBuilder.Append("\r\n                            </td>\r\n                            <td align=\"center\">\r\n                                <a href=\"javascript:;\" class=\"reduce\" title=\"减一\" onclick=\"CartAddMinus(this, '/', '");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', -1);\">\r\n                                    </a>\r\n                                <input type=\"text\" name=\"goods_quantity\" id=\"goods_quantity_");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" onblur=\"cartTotalAmount(this,  ");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append(");\"\r\n                                    class=\"copies_num\" value=\"1\" onblur=\"TotalCartAmount(this, '/', '");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("');\"\r\n                                    onkeypress=\"return (/[\\d]/.test(String.fromCharCode(event.keyCode)))\">\r\n                                <a href=\"javascript:;\" class=\"subjoin\" title=\"加一\" onclick=\"CartAddMinus(this,'/', '");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', 1);\">\r\n                                    </a>\r\n                            </td>\r\n                            <td class=\"ticket_item_buy\">\r\n                                <span class=\"base_price\" id=\"pricecount_");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" class=\"pricecount\"><dfn>¥</dfn><strong\r\n                                    class=\"unitprice\">--</strong></span>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <div class=\"line10\">\r\n                </div>\r\n                <div class=\"orderinfo\">\r\n                    <h2>\r\n                        <strong>取票人信息</strong> <span class=\"txt_gray\">用于接收门票信息和入园</span></h2>\r\n                    <div class=\"form_box clearfix\">\r\n                        <div class=\"f_l\">\r\n                            <dl>\r\n                                <dt>取票人姓名：</dt>\r\n                                <dd>\r\n                                    <input name=\"accept_name\" id=\"accept_name\" type=\"text\" class=\"input txt wide\" value=\"\"\r\n                                        datatype=\"s2-20\" sucmsg=\" \"><span class=\"Validform_checktip\">*取票人姓名</span></dd>\r\n                            </dl>\r\n                            <dl>\r\n                                <dt>手机号码：</dt>\r\n                                <dd>\r\n                                    <input name=\"mobile\" id=\"mobile\" type=\"text\" class=\"input txt\" value=\"\" datatype=\"m\"\r\n                                        sucmsg=\" \"><span class=\"Validform_checktip\">*手机号码用于接收手机短信</span></dd>\r\n                            </dl>\r\n                            <dl>\r\n                                <dt>订单留言：</dt>\r\n                                <dd>\r\n                                    <textarea name=\"message\" id=\"message_content\" datatype=\"s0-250\" class=\"input\" style=\"width: 250px;\r\n                                        height: 35px;\"></textarea>\r\n                                </dd>\r\n                            </dl>\r\n                        </div>\r\n                        <div class=\"f_l\" style=\"margin-left: 150px; margin-top: 50px\">\r\n                            <p class=\"total\">\r\n                                <b class=\"font18\">应付总金额： </b><span class=\"base_price\"><dfn>¥</dfn><strong id=\"total_amount\">0</strong></span></p>\r\n                            <a class=\"btn\" href=\"javascript:go(-1)\">返回上一页</a>\r\n                            <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"button\" value=\"确认提交\" style=\"width:100px\" class=\"btn btn-success marL10\" />\r\n                        </div>\r\n                    </div>\r\n                    <input type=\"hidden\" id=\"jsonbox\" />\r\n                    <div class=\"line20\">\r\n                    </div>\r\n                </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n          <!--footer-->\r\n    ");

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


	templateBuilder.Append("\r\n    <!--/footer-->\r\n    </div>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
