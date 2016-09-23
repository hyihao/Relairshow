<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.shopping" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>购物中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"cart_box\">\r\n    ");
	if (action=="cart")
	{

	templateBuilder.Append("\r\n    <!--购物车-->\r\n    <h1 class=\"main_tit\">\r\n      <span><a onclick=\"DeleteCart(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("','0');\" href=\"javascript:;\">清空购物车</a></span>\r\n      我的购物车<strong>Shopping Cart</strong>\r\n    </h1>\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li class=\"selected\"><span>1</span>放进购物车</li>\r\n        <li><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    \r\n    <table width=\"938\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart_table\">\r\n      <tr>\r\n        <th width=\"64\"></th>\r\n        <th align=\"left\">商品名称</th>\r\n        <th width=\"80\" align=\"center\">积分</th>\r\n        <th width=\"80\" align=\"center\">单价</th>\r\n        <th width=\"80\" align=\"center\">数量</th>\r\n        <th width=\"80\" align=\"center\">优惠</th>\r\n        <th width=\"100\" align=\"center\">金额小计</th>\r\n        <th width=\"100\" align=\"center\">积分小计</th>\r\n        <th width=\"50\" align=\"center\">操作</th>\r\n      </tr>\r\n       ");
	IList<DTcms.Model.cart_items> ls1 = get_cart_list();

	foreach(DTcms.Model.cart_items modelt in ls1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" /></a></td>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a></td>\r\n        <td align=\"center\">\r\n          ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n          +\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n        </td>\r\n        <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.price));
	templateBuilder.Append("<input name=\"goods_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\" /></td>\r\n        <td align=\"center\">\r\n          <a href=\"javascript:;\" class=\"reduce\" title=\"减一\" onclick=\"CartComputNum(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("', -1);\">减一</a>\r\n          <input type=\"text\" name=\"goods_quantity\" class=\"input\" style=\"width:30px;text-align:center;ime-mode:Disabled;\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("\" onblur=\"CartAmountTotal(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("');\" onkeypress=\"return (/[\\d]/.test(String.fromCharCode(event.keyCode)))\" />\r\n          <a href=\"javascript:;\" class=\"subjoin\" title=\"加一\" onclick=\"CartComputNum(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', '");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("', 1);\">加一</a>\r\n        </td>\r\n        <td align=\"center\">￥<label name=\"discount_amount\">");
	templateBuilder.Append(((modelt.price-modelt.user_price)*modelt.quantity).ToString());

	templateBuilder.Append("</label></td>\r\n        <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥<label name=\"real_amount\">");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("</label></font></td>\r\n        <td align=\"center\">\r\n          <font color=\"#FF0000\" size=\"2\">\r\n            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <label name=\"point_count\">");
	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("</label>\r\n          </font>\r\n        </td>\r\n        <td align=\"center\"><a onclick=\"DeleteCart(this,'");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("','");
	templateBuilder.Append(Utils.ObjectToStr(modelt.id));
	templateBuilder.Append("');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n       ");
	}	//end for if

	if (ls1.Count<1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td colspan=\"9\">\r\n          <div class=\"msg_tips\">\r\n            <div class=\"ico warning\"></div>\r\n            <div class=\"msg\">\r\n              <strong>购物车没有商品！</strong>\r\n              <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n            </div>\r\n          </div>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n      <tr>\r\n        <th colspan=\"9\" align=\"right\">\r\n          商品件数：");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_quantity));
	templateBuilder.Append(" 件 &nbsp;&nbsp; 商品总金额（不含运费）：<font color=\"#FF0000\" size=\"2\">￥");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</font>元 &nbsp;&nbsp; 总积分：<font color=\"#FF0000\" size=\"2\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_point));
	templateBuilder.Append("分</font>\r\n        </th>\r\n      </tr>\r\n      \r\n	</table>\r\n    <div class=\"line20\"></div>\r\n    <div class=\"right\">\r\n      <a class=\"btn\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">继续购物</a>\r\n      ");
	if (cartModel.total_quantity==0)
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-gray\">不能结算</a>\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-success marL10\" href=\"");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("\">马上去结算</a>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <!--/购物车-->\r\n    \r\n    ");
	}
	else if (action=="confirm")
	{

	templateBuilder.Append("\r\n       <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n	<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            //表单提交\r\n            AjaxInitForm('order_form', 'btnSubmit', 0);\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n    <!--结算中心-->\r\n    <!--结算中心-->\r\n    <h1 class=\"main_tit\">\r\n      <span><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">返回</a></span>\r\n      确认订单信息<strong>Confirm order</strong>\r\n    </h1>\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li class=\"item\"><span>1</span>放进购物车</li>\r\n        <li class=\"selected\"><span>2</span>填写订单信息</li>\r\n        <li class=\"last\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    \r\n    <form name=\"order_form\" id=\"order_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=order_save\">\r\n    <h3 class=\"bar_tit\">1、收货信息</h3>\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>收货人姓名：</dt>\r\n        <dd><input name=\"accept_name\" id=\"accept_name\" type=\"text\" class=\"input txt wide\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.nick_name));
	templateBuilder.Append("\" datatype=\"s2-20\" sucmsg=\" \" /><span class=\"Validform_checktip\">*收货人姓名</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>收货地址：</dt>\r\n        <dd><input name=\"address\" id=\"address\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.address));
	templateBuilder.Append("\" datatype=\"*2-100\" sucmsg=\" \" style=\"width:300px;\" /><span class=\"Validform_checktip\">*收货人的详细地址</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>邮政编码：</dt>\r\n        <dd><input name=\"post_code\" id=\"post_code\" type=\"txt\" class=\"input txt\" /><span class=\"Validform_checktip\">所在地区的邮政编码，非必填</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>手机号码：</dt>\r\n        <dd><input name=\"mobile\" id=\"mobile\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.mobile));
	templateBuilder.Append("\" datatype=\"m\" sucmsg=\" \" /><span class=\"Validform_checktip\">*收货人的手机号码</span></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>联系电话：</dt>\r\n        <dd><input name=\"telphone\" id=\"telphone\" type=\"text\" class=\"input txt\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.telphone));
	templateBuilder.Append("\" /><span class=\"Validform_checktip\">收货人的联系电话，非必填</span></dd>\r\n      </dl>\r\n    </div>\r\n    \r\n      <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">2、支付方式</h3>\r\n    <ul class=\"item_box\">\r\n      ");
	DataTable list1 = get_payment_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	int dr1__loop__id=0;
	foreach(DataRow dr1 in list1.Rows)
	{
		dr1__loop__id++;


	decimal poundage_amount = get_payment_poundage_amount(Utils.StrToInt(Utils.ObjectToStr(dr1["id"]), 0));

	templateBuilder.Append("\r\n      <li>\r\n        ");
	if (dr1__loop__id==(list1.Rows.Count))
	{

	templateBuilder.Append("\r\n        <label><input name=\"payment_id\" type=\"radio\" onclick=\"PaymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" datatype=\"*\" sucmsg=\" \" /><input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <label><input name=\"payment_id\" type=\"radio\" onclick=\"PaymentAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr1["id"]) + "\" /><input name=\"payment_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("\" />" + Utils.ObjectToStr(dr1["title"]) + "\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <em>手续费：");
	templateBuilder.Append(Utils.ObjectToStr(poundage_amount));
	templateBuilder.Append("元</em></label>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">3、配送方式</h3>\r\n    <ul class=\"item_box\">\r\n      ");
	DataTable list2 = get_express_list(0, "is_lock=0");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	int dr2__loop__id=0;
	foreach(DataRow dr2 in list2.Rows)
	{
		dr2__loop__id++;


	templateBuilder.Append("\r\n      <li>\r\n        ");
	if (dr2__loop__id==(list2.Rows.Count))
	{

	templateBuilder.Append("\r\n        <label><input name=\"express_id\" type=\"radio\" onclick=\"FreightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" datatype=\"*\" sucmsg=\" \" /><input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <label><input name=\"express_id\" type=\"radio\" onclick=\"FreightAmountTotal(this);\" value=\"" + Utils.ObjectToStr(dr2["id"]) + "\" /><input name=\"express_price\" type=\"hidden\" value=\"" + Utils.ObjectToStr(dr2["express_fee"]) + "\" />" + Utils.ObjectToStr(dr2["title"]) + "\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n        <em>费用：" + Utils.ObjectToStr(dr2["express_fee"]) + "元</em></label>\r\n      </li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">4、商品清单  <span class=\"f_r\"><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">修改商品清单</a></span></h3>\r\n    <table width=\"938\" border=\"0\" align=\"center\" cellpadding=\"8\" cellspacing=\"0\" class=\"cart_table\">\r\n      <tr>\r\n        <th width=\"64\"></th>\r\n        <th align=\"left\">商品名称</th>\r\n        <th width=\"80\" align=\"center\">积分</th>\r\n        <th width=\"80\" align=\"center\">单价</th>\r\n        <th width=\"80\" align=\"center\">数量</th>\r\n        <th width=\"80\" align=\"center\">优惠</th>\r\n        <th width=\"100\" align=\"center\">金额小计</th>\r\n        <th width=\"100\" align=\"center\">积分小计</th>\r\n      </tr>\r\n      ");
	IList<DTcms.Model.cart_items> ls2 = get_cart_list();

	foreach(DTcms.Model.cart_items modelt in ls2)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
	templateBuilder.Append("\" class=\"img\" /></a></td>\r\n        <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.title));
	templateBuilder.Append("</a></td>\r\n        <td align=\"center\">\r\n          ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n          +\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n        </td>\r\n        <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.price));
	templateBuilder.Append("<input name=\"goods_price\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.user_price));
	templateBuilder.Append("\" /></td>\r\n        <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n        <td align=\"center\">￥<label name=\"discount_amount\">");
	templateBuilder.Append(((modelt.price-modelt.user_price)*modelt.quantity).ToString());

	templateBuilder.Append("</label></td>\r\n        <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥<label name=\"real_amount\">");
	templateBuilder.Append((modelt.user_price*modelt.quantity).ToString());

	templateBuilder.Append("</label></font></td>\r\n        <td align=\"center\">\r\n          <font color=\"#FF0000\" size=\"2\">\r\n            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            <label name=\"point_count\">");
	templateBuilder.Append((modelt.point*modelt.quantity).ToString());

	templateBuilder.Append("</label>\r\n            </font>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	if (ls2.Count<1)
	{

	templateBuilder.Append("\r\n      <tr>\r\n        <td colspan=\"8\">\r\n          <div class=\"msg_tips\">\r\n            <div class=\"ico warning\"></div>\r\n            <div class=\"msg\">\r\n              <strong>购物车没有商品！</strong>\r\n              <p>您的购物车为空，<a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">马上去购物</a>吧！</p>\r\n            </div>\r\n          </div>\r\n        </td>\r\n      </tr>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n	</table>\r\n    \r\n    <div class=\"line20\"></div>\r\n    <h3 class=\"bar_tit\">5、结算信息</h3>\r\n\r\n    <div class=\"cashin_row\">\r\n          <div class=\"cashin_row_c1\">\r\n          <strong>商品合计</strong>\r\n           </div> \r\n           <div class=\"cashin_row_c2\"><font color=\"#FF0000\">¥<label id=\"Label1\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</label></font></div> \r\n    </div>\r\n    <div class=\"cashin_row\">\r\n                    <div class=\"cashin_row_c1\"><strong>运费合计</strong></div>\r\n                    <div class=\"cashin_row_c2\" id=\"pr_shippingprice\" pr=\"0.00\"><font color=\"#FF0000\">¥<label id=\"express_fee1\">0.00</label></font></div>\r\n     </div>\r\n\r\n       <div class=\"cashin_row\">\r\n                    <div class=\"cashin_row_c1\"><strong>支付手续费</strong></div>\r\n                    <div class=\"cashin_row_c2\" id=\"Div1\" pr=\"0.00\"><font color=\"#FF0000\">¥<label id=\"payment_fee1\">0.00</label></font></div>\r\n     </div>\r\n\r\n     <div class=\"cashin_row\">\r\n    <h5 style=\"\" id=\"usequan\">使用航展优惠券<span style=\"color:#07F; cursor:pointer;\" id=\"hzyouhui\">什么是航展优惠券?</span></h5>  \r\n\r\n    <div class=\"bank_item\" id=\"quan_jihuo\">\r\n     <div class=\"fm_item\">\r\n      <label class=\"fm-label\" for=\"txtquanid\">优惠券： </label>\r\n        <input type=\"text\" class=\"input txt\" name=\"txt_ship_phone\" maxlength=\"40\" value=\"\" id=\"txtquanid\" >       \r\n       <span class=\"btn\" id=\"btnquan_jihuo\" onclick=\"javascript:useQuan()\" >激活</span>\r\n      </div>\r\n\r\n    </div>\r\n    </div>\r\n    \r\n     \r\n    <div  class=\"linemargin15\">\r\n      <div class=\"f_l\">\r\n        <h4>订单留言<span>字数控制在100个字符内</span></h4>\r\n        <textarea name=\"message\" class=\"input\" style=\"width:250px;height:35px;\"></textarea>\r\n      </div>\r\n      \r\n      <div class=\"f_r\" style=\"text-align:right;line-height:40px;\">\r\n        商品件数：<font color=\"#FF0000\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_quantity));
	templateBuilder.Append("</font> 件 &nbsp; &nbsp;&nbsp;总积分：<font color=\"#FF0000\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.total_point));
	templateBuilder.Append("</font> 分 &nbsp; &nbsp;&nbsp;商品金额：<font color=\"#FF0000\">￥<label id=\"goods_amount\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</label></font>&nbsp; &nbsp;+ &nbsp; 运费：<font color=\"#FF0000\">￥<label id=\"express_fee\">0.00</label></font>&nbsp; &nbsp;+ &nbsp; 支付手续费：<font color=\"#FF0000\">￥<label id=\"payment_fee\">0.00</label></font>\r\n        \r\n        <br />\r\n        <b class=\"font18\">应付总金额：<font color=\"#FF0000\">￥<label id=\"order_amount\">");
	templateBuilder.Append(Utils.ObjectToStr(cartModel.real_amount));
	templateBuilder.Append("</label></font></b>\r\n      </div>\r\n\r\n \r\n\r\n    </div>\r\n\r\n    <div class=\"line20\"></div>\r\n   \r\n\r\n    <div class=\"f_r clearfix\">\r\n      <a class=\"btn\" href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">返回修改</a>\r\n      ");
	if (get_cart_quantity()>0)
	{

	templateBuilder.Append("\r\n      <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" value=\"确认提交\" class=\"btn btn-success marL10\" />\r\n      ");
	}
	else
	{

	templateBuilder.Append("\r\n      <a class=\"btn btn-gray marL10\">确认提交</a>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n    </div>\r\n\r\n    <div class=\"line20\"></div>\r\n    <!--/结算中心-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Footer-->\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
