<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.payment" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>支付中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\" rel=\"stylesheet\">\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"cart_box\">\r\n    <h1 class=\"main_tit\">\r\n      支付中心<strong>Payment</strong>\r\n    </h1>\r\n    ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n    <!--提交支付-->\r\n    <form id=\"pay_form\" name=\"pay_form\" method=\"post\"  action=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/payment/");
	templateBuilder.Append(Utils.ObjectToStr(payModel.api_path));
	templateBuilder.Append("/index.aspx\" target=\"_blank\">\r\n    <input id=\"pay_order_no\" name=\"pay_order_no\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_order_amount\" name=\"pay_order_amount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_user_name\" name=\"pay_user_name\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\" />\r\n    ");
	if (order_type=="recharge")
	{

	templateBuilder.Append("\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>订单号：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>充值金额：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>支付方式：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认支付\" /></dd>\r\n      </dl>\r\n    </div>\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"账户充值\" />\r\n    ");
	}
	else if (order_type=="buygoods")
	{

	templateBuilder.Append("\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li><span>1</span>放进购物车</li>\r\n        <li class=\"item\"><span>2</span>填写订单信息</li>\r\n        <li class=\"last selected\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"form_box\">\r\n       <div class=\"line20\"></div>\r\n     <h3 class=\"bar_tit\">订单信息</h3>\r\n      <dl>\r\n        <dt>订单号：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>收货人姓名：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.accept_name));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>送货地址：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.address));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>手机号码：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.mobile));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>固定电话：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.telphone));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n\r\n      <dl>\r\n        <dt>备注留言：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.message));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n             <dl>\r\n        <dt>支付方式：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n       <div class=\"line20\"></div>\r\n          <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\" class=\"ftable\">\r\n        <tr>\r\n          <th width=\"64\"></th>\r\n          <th align=\"left\">商品名称</th>\r\n          <th width=\"80\">销售价</th>\r\n          <th width=\"80\">优惠价</th>\r\n          <th width=\"60\">积分</th>\r\n          <th width=\"50\">数量</th>\r\n           <th width=\"100\">金额合计</th>\r\n      \r\n        </tr>\r\n        ");
	if (orderModel.order_goods!=null)
	{

	foreach(DTcms.Model.order_goods modelt in orderModel.order_goods)
	{

	templateBuilder.Append("\r\n        <tr>\r\n          <td><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.goods_id));

	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(get_article_img_url(modelt.goods_id).ToString());

	templateBuilder.Append("\" class=\"img\" /></a></td>\r\n          <td align=\"left\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",modelt.goods_id));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_title));
	templateBuilder.Append("</a></td>\r\n          <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.goods_price));
	templateBuilder.Append("</td>\r\n          <td align=\"center\">￥");
	templateBuilder.Append(Utils.ObjectToStr(modelt.real_price));
	templateBuilder.Append("</td>\r\n          <td align=\"center\">\r\n            ");
	if (modelt.point>0)
	{

	templateBuilder.Append("\r\n            +\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n            ");
	templateBuilder.Append(Utils.ObjectToStr(modelt.point));
	templateBuilder.Append("\r\n          </td>\r\n          <td align=\"center\">");
	templateBuilder.Append(Utils.ObjectToStr(modelt.quantity));
	templateBuilder.Append("</td>\r\n          <td align=\"center\"><font color=\"#FF0000\" size=\"2\">￥");
	templateBuilder.Append((modelt.real_price*modelt.quantity).ToString());

	templateBuilder.Append("</font></td>\r\n        \r\n        </tr>\r\n        ");
	}	//end for if

	}
	else
	{

	templateBuilder.Append("\r\n        <tr><td colspan=\"8\" align=\"center\">暂无记录</td></tr>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </table>\r\n          <div class=\"line10\"></div>\r\n      <div style=\"text-align:right;\">\r\n        商品金额：<span class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.real_amount));
	templateBuilder.Append("</span>&nbsp; &nbsp;+ &nbsp; 运费：<span class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.express_fee));
	templateBuilder.Append("</span>&nbsp; &nbsp;<br />\r\n        <b>支付总金额：<span class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.order_amount));
	templateBuilder.Append("</span></b>\r\n      </div>         \r\n       <div class=\"line20\"></div>\r\n  \r\n    \r\n             <div class=\"line20\"></div>\r\n             <div class=\"f_r clearfix\">                          \r\n                <input id=\"Submit1\" name=\"btnSubmit\" type=\"submit\" class=\"btn btn-success marL10\"  value=\"确认支付\" />  \r\n                 <a class=\"btn\" href=\"javascript:history.go(-1)\">返回上一页</a>                   \r\n            </div>\r\n         \r\n\r\n    </div>\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"购买航展门票\" />\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    </form>\r\n    <!--提交支付-->\r\n    ");
	}	//end for if

	if (action=="succeed")
	{

	templateBuilder.Append("\r\n    <!--支付成功-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico\"></div>\r\n      <div class=\"msg\">\r\n        <strong>支付成功啦！</strong>\r\n        <p>恭喜您，您的支付已经成功！</p>\r\n        <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n        <p>如有其它问题，请立即与我们客服人员联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--支付成功-->\r\n    ");
	}	//end for if

	if (action=="error")
	{

	templateBuilder.Append("\r\n    <!--支付出错-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico error\"></div>\r\n      <div class=\"msg\">\r\n        <strong>出错啦，支付失败！</strong>\r\n        <p>支付过程中发生意处错误！</p>\r\n        <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n        <p>如您确实已经支付，请立即与我们客服人员联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--支付出错-->\r\n    ");
	}	//end for if

	if (action=="login")
	{

	templateBuilder.Append("\r\n    <!--用户未登录-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico warning\"></div>\r\n      <div class=\"msg\">\r\n        <strong>对不起，请登录后再进行支付！</strong>\r\n        <p>您尚未登录或已经超时啦！</p>\r\n        <p>如果您已是会员用户，请<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">点击这里进行登录</a>！</p>\r\n        <p>如果您尚未成为我们会员，请<a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">点击这里注册</a>。</p>\r\n      </div>\r\n    </div>\r\n    <!--用户未登录-->\r\n    ");
	}	//end for if

	if (action=="recharge")
	{

	templateBuilder.Append("\r\n    <!--用户余额不足-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico warning\"></div>\r\n      <div class=\"msg\">\r\n        <strong>对不起，您的余额不足本次支付！</strong>\r\n        <p>由于您选择的是余额支付，请确定您的余额是否足够！</p>\r\n        <p>如果余额不足，请<a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">点击这里充值</a>后再进行后续支付！</p>\r\n        <p>如果有任何问题，请与我们客服取得联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--用户余额不足-->\r\n    ");
	}	//end for if

	templateBuilder.Append("\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

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
