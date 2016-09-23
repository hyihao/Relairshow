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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    ");
	string category_title = get_category_title(model.category_id,"航展门票");

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
	templateBuilder.Append("\" name=\"description\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/showticket.css\"\r\n        rel=\"stylesheet\">\r\n    <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/css/common.css\"\r\n        rel=\"stylesheet\">\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n   \r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/base.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/picture.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/javascript/cart.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n\r\n            $(window).bind(\"scroll.gotop\", function () {\r\n                if ($(window).scrollTop() > 700) {\r\n                    $(\".r_tabs\").addClass(\"r_tabs_fixed\");\r\n                    $(\".btn_buy\").show();\r\n                }\r\n                else {\r\n                    $(\".r_tabs\").removeClass(\"r_tabs_fixed\");\r\n                    $(\".btn_buy\").hide();\r\n                }\r\n            });\r\n\r\n            $(\".r_tabs ul li\").each(function (a, b) {\r\n                $(b).click(function () {\r\n                    $(b).addClass(\"current\").siblings().removeClass(\"current\");\r\n                })\r\n            });\r\n        });\r\n    </");
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


	templateBuilder.Append("\r\n    <!--/Header-->\r\n    <div id=\"bd\" class=\"cf\">\r\n        <h2 class=\"hz_itemlist_nva\">\r\n            珠海航展: <a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">珠海航展</a>\r\n            &gt;<a href=\"");
	templateBuilder.Append(linkurl("ticket"));

	templateBuilder.Append("\">珠海航展门票预订</a> \r\n        </h2>\r\n        <div class=\"ticket_deal\">\r\n            <div class=\"ticket_deal_headline\">\r\n                <h3>\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h3>\r\n                <div class=\"ticket_deal_description\">\r\n                    ");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\r\n                </div>\r\n            </div>\r\n            <div class=\"t_detail_main clearfix\">\r\n                <!--商品图片-->\r\n                <div class=\"ticketleft\">\r\n                    <!--幻灯片开始-->\r\n                    <div class=\"pictureDIV\">\r\n                        <div id=\"preview\" class=\"spec-preview\">\r\n                            <span class=\"jqzoom\">\r\n                                <img width=\"460px\" height=\"250px\" /></span>\r\n                        </div>\r\n                        <!--缩图开始-->\r\n                        <div class=\"spec-scroll\">\r\n                            <div class=\"items\">\r\n                                <ul>\r\n                                  ");
	if (model.albums!=null)
	{

	foreach(DTcms.Model.article_albums modelt in model.albums)
	{

	templateBuilder.Append("\r\n                <li><img bimg=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.original_path));
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.thumb_path));
	templateBuilder.Append("\" onmousemove=\"preview(this);\" /></li>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n                                   \r\n                                </ul>\r\n                            </div>\r\n                        </div>\r\n                        <!--缩图结束-->\r\n                    </div>\r\n                    <!--幻灯片结束-->\r\n                </div>\r\n                <!--/商品图片-->\r\n                <div class=\"deal-component-info\">\r\n                    <div class=\"deal-component-price clearfix\">\r\n                        <h3 class=\"deal-component-price-current\">\r\n                            ¥ <strong>" + Utils.ObjectToStr(model.fields["market_price"]) + "</strong></h3>\r\n                        <div class=\"deal-component-price-sold\">\r\n                            已售<span class=\"orange\"><strong>");
	templateBuilder.Append(Utils.ObjectToStr(model.click));
	templateBuilder.Append("</strong></span></div>\r\n                    </div>\r\n                    <ul class=\"deal-component-expiry\">\r\n                        <li><span class=\"deal-component-expiry-leading f_l\">有效期</span> <span class=\"deal-component-inline-text-container f_l\">\r\n                            <span class=\"deal-component-inline-text-wrapper\"><span class=\"expiry_span\">2014-11-14\r\n                                至2014-11-16 </span><span class=\"expiry_span_notice orange\">公众日3天任意一天</span></span></span></li>\r\n                        <li><span class=\"deal-component-expiry-leading f_l\">使用时间</span> <span class=\"deal-component-inline-text-container f_l\">\r\n                            <span class=\"deal-component-inline-text-wrapper\"><span class=\"orange\">9:00-17:00</span>\r\n                            </span></span></li>\r\n                    </ul>\r\n                    <div class=\"divider\">\r\n                    </div>\r\n                    <div class=\"ticket_quantity\">\r\n                        <span class=\"deal-component-expiry-leading f_l\">数量</span>\r\n                        <button for=\"cart_minus\" data-action=\"-\" gaevent=\"top/minus\" type=\"button\" class=\"f_l\" id=\"cut_count\">\r\n                            −</button>\r\n                        <input type=\"text\" class=\"cart_quantity f_l\" value=\"1\" maxlength=\"9\" name=\"goods_quantity\"\r\n                            id=\"goods_quantity\"><input name=\"goods_id\" id=\"goods_id\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" />\r\n                        <button for=\"cart_add\" class=\"item\" data-action=\"+\" gaevent=\"top/plus\" type=\"button\" id=\"add_count\"\r\n                            class=\"f_l\">\r\n                            +</button><span class=\"deal-component-quantity-warning orange\"></span> <span class=\"quantity_warning orange\">\r\n                                每人最多只能购买 100单</span>\r\n                    </div>\r\n                    <div class=\"btn-box clearfix\">\r\n                    ");
	int stock_quantity = Utils.StrToInt(Utils.ObjectToStr(model.fields["stock_quantity"]), 0);

	if (stock_quantity>0)
	{

	templateBuilder.Append("\r\n                        <a href=\"javascript:void(0);\" class=\"add\" onclick=\"CartAdd(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 0, '");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("');\">\r\n                            加入购物车</a> <a href=\"javascript:void(0);\" class=\"buy\" onclick=\"CartAdd(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("');\">\r\n                                立即购买</a>\r\n                        ");
	}
	else
	{

	templateBuilder.Append("\r\n                        <a title=\"该商品供货紧张，无法加入购物车\" class=\"add-over\">加入购物车</a> <a title=\"该商品供货紧张，无法立即购买\" class=\"buy-over\">\r\n                            立即购买</a>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                        <a target=\"_blank\" class=\"f_l\" alt=\"淘宝购买\" href=\"http://item.taobao.com/item.htm?spm=a1z10.1.w4004-8861640800.8.TMILMo&id=41686013354#\" title=\"淘宝购买\" rel=\"nofollow\">\r\n                                        \r\n                        <span class=\"btn_panic\">淘宝购买<i></i></span>\r\n                                            \r\n                                                            </a>\r\n\r\n                    </div>\r\n                    <div class=\"extra clearfix f_l\">\r\n                        <dl>\r\n                            <dt class=\"deal-component-expiry-leading\">支付方式 </dt>\r\n                            <dd>\r\n                                <a href=\"javascript:void(0)\" target=\"_blank\" title=\"信用卡支付\" data-spm=\"d9\" class=\"f_l\">\r\n                                    <i class=\"card-payment\"></i>信用卡支付 </a><a href=\"javascript:void(0)\" target=\"_blank\"\r\n                                        title=\"支付宝支付\" data-spm=\"\" class=\"f_l\"><i class=\"alipay\"></i>支付宝支付 </a><a href=\"javascript:void(0)\"\r\n                                            target=\"_blank\" title=\"银行转账\" data-spm=\"d19\" class=\"f_l\"><i class=\"zhuanzhang\"></i>\r\n                                            银行转账 </a>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            ");

	templateBuilder.Append("        <!-- JiaThis Button BEGIN --> \r\n        <div id=\"ckepop\">\r\n            <span class=\"jiathis_txt\">分享到：</span>\r\n            <a class=\"jiathis_button_qzone\"></a>\r\n            <a class=\"jiathis_button_tqq\"></a>\r\n            <a class=\"jiathis_button_tsina\"></a>\r\n            <a class=\"jiathis_button_renren\"></a>\r\n            <a class=\"jiathis_button_douban\"></a>\r\n            <a class=\"jiathis_button_taobao\"></a>\r\n            <a class=\"jiathis_button_ujian\"></a>\r\n            <a class=\"jiathis_button_fav\"></a> \r\n            <a class=\"jiathis_button_copy\">复制</a> \r\n            <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n            <a class=\"jiathis_counter_style\"></a> \r\n        </div> \r\n        <!-- JiaThis Button END -->\r\n        <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n        <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"ticket_content f_l\">\r\n            <div class=\"other-biz\">\r\n                <h4>\r\n                    中国(珠海)航展其他门票\r\n                    <div class=\"biz_sub_title\">\r\n                        <span class=\"biz_sub_title_right\">已售</span> <span class=\"biz_sub_title_left\">门票价</span>\r\n                    </div>\r\n                </h4>\r\n                <ul class=\"ul_item_list\">\r\n                 ");
	DataTable hztickets = get_article_list("goods", 44, 12, "is_red=1 and id<>" + model.id);

	int ulticket__loop__id=0;
	foreach(DataRow ulticket in hztickets.Rows)
	{
		ulticket__loop__id++;


	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("ticket_item",Utils.ObjectToStr(ulticket["id"])));

	templateBuilder.Append("\"  target=\"_blank\">\r\n                    <span class=\"biz-title\">" + Utils.ObjectToStr(ulticket["title"]) + " <em style=\"padding-left:10px\">" + Utils.ObjectToStr(ulticket["zhaiyao"]) + " </em>\r\n                     </span><span\r\n                            class=\"price\">￥" + Utils.ObjectToStr(ulticket["market_price"]) + "</span><span class=\"sale\">" + Utils.ObjectToStr(ulticket["click"]) + "</span> </a></li>\r\n                   \r\n                 ");
	}	//end for if

	templateBuilder.Append("   \r\n                </ul>\r\n            </div>\r\n            <div class=\"detail\">\r\n                <div class=\"r_tabs\">\r\n                    <ul>\r\n                        <li class=\"current\"><a href=\"#remind\">特别提醒</a> </li>\r\n                        <li class=\"\"><a href=\"#address\">商家地址</a> </li>\r\n                        <li class=\"\"><a href=\"#detail\">本票详情</a> </li>\r\n                        <li><a href=\"#pinglun\">本票点评 <span class=\"c_tx\" id=\"span_commmentbox\">(10)</span></a></li>\r\n                    </ul>\r\n                    <div class=\"btn_buy\" id=\"btn_buy\" style=\"display: none;\">\r\n                        <span class=\"span_buy\" id=\"Span2\"> ");
	if (stock_quantity>0)
	{

	templateBuilder.Append("<a href=\"javascript:void(0);\" onclick=\"CartAdd(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("');\">购买￥" + Utils.ObjectToStr(model.fields["market_price"]) + "</a>");
	}
	else
	{

	templateBuilder.Append("缺货");
	}	//end for if

	templateBuilder.Append(" </span>\r\n                    </div>\r\n                </div>\r\n                <div class=\"hb\">\r\n                    <a name=\"remind\"></a>\r\n                    <div class=\"detail_bar\">\r\n                        <div class=\"r_tebie\">\r\n                            <h2 class=\"title\">\r\n                                <span>特别提醒</span></h2>\r\n                            <div class=\"content_info\">\r\n                                <p>\r\n                                    <span>1.请观众在购票前务必了解清楚各种门票的适用对象、适用条件和适用时间，以便买到自身适用的门票。如购票后发现不适用理由，则无法以补门票差价、退票或换票方式处理，一切后果自负。</span><br>\r\n                                    <span>2.所有人员（含老人、军人、婴儿）需购买门票进场参观。不设免票婴幼儿童，建议观众不要携带三岁以下儿童入场。</span><br>\r\n                                    <span>3.持票观众限在公众日展览开放时间内前往参观，门票过期作废；门票在公众日三天内任选一天使用，入场当日单次有效，通过门禁闸机打孔后失效。</span><br>\r\n                                    <span>4.学生票和优惠票从专用验票通道入场，同时需查验相关有效证件和门票后入场参观。持学生票入场时需出示珠海身份证或户口本，持优惠票入场时需要出示相关有效学生、老人或残疾的证件或证明，有效学生证明是指有学生照片和学生身份证明资料的证件或文件（如可以由学校盖章认可学生身份的证明（需有照片）,老人有效证件指带照片的老人证或身份证。残疾人有效证件指政府相关公共机构审核印发的带照片的残疾证明或证书。有效证件也可是社会公共机构通过审核学生或老人身份后办理的证件（如珠海学生和老人公车乘车卡）。</span><br>\r\n                                    <span>5.门票一经售出，不得退票、换票，遗失不补。</span><br>\r\n                                    <span>6.所有门票不宜折叠，请公众购买门票后注意妥善保管，一经损坏，无法换票或补票，后果自负。</span>\r\n                                </p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <a name=\"address\"></a>\r\n                    <div class=\"detail_bar\">\r\n                        <div class=\"r_tebie\">\r\n                            <h2 class=\"title\">\r\n                                <span>商家地址</span></h2>\r\n                            <div class=\"content_info\">\r\n                                <p>\r\n                                    <span>第十届中国航展的展览时间和地点</span><br>\r\n                                    <span>一、展览期：2014年11月11日至11月16日。</span><br>\r\n                                    <span>1、2014年11月11日至11月13日为专业日，面向航空航天专业人士开放。</span>\r\n                                    <br>\r\n                                    <span>2、2014年11月14日至11月16日为公众日，面向社会普通观众开放。</span><br>\r\n                                    <span>3、普通观众咨询热线：0756-6855591、15989768355</span><br>\r\n                                    <span>二、展览入场时间：每天 9：00—17：00</span><br>\r\n                                    <span>三、展览地点：中国珠海航展中心——珠海市机场路航展馆(位于珠海三灶机场一侧)</span><br>\r\n                                    <span><a href=\"http://hangzhan.qibila.com/news/show-117.aspx\" target=\"_blank\" style=\"font-size: 14px;line-height: 26px; color:blue\">珠海航展交通指南</a></span><br>\r\n                                </p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <a name=\"detail\"></a>\r\n                    <div class=\"detail_bar\">\r\n                        <div class=\"r_tebie\">\r\n                            <h2 class=\"title\">\r\n                                <span>本票详情</span></h2>\r\n                            <div class=\"content_info\">\r\n                                <table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"font-size: 14px;\"\r\n                                    class=\"tickedinfo\">\r\n                                    <tbody>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong style=\"font-size: 15px;\">门票种类</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong style=\"font-size: 15px;\">票价</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <p style=\"text-align: left;\">\r\n                                                    <strong style=\"font-size: 15px;\">适用规则</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>个人票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>400</strong><strong>元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                适用所有人员，一人一票，不能携带无票婴幼儿童入场。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>特惠票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>150元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                适用于18周岁及以下（即1997年1月1日及以后出生）珠海户口的中小学生和幼童。\r\n                                                </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                入场时需出示相关有效证件（珠海户口本或身份证）。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>优惠票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>200</strong><strong>元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                适用于25周岁以下全日制学校的大中小学生（不含研究生和在职教育学生）、身高1.5米以下的儿童、残疾人士和60周岁及以上（即1955年12月31日以前出生）老年人。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                入场时需出示相关有效证件（学生证、残疾证明或者身份证），从专用通道入场。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>家庭票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>950</strong><strong>元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                               适用于2个成人带1个身高1.5米（含1.5米）以下儿童）。（验票通道前设立身高标尺）。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，家庭票为一张票，2大1小同时入场，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>团体票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>5500</strong><strong>元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                适用于15人的团体人员使用。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，团队票为一张票，15人需同时入场，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td width=\"91\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>团购票</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"96\">\r\n                                                <p style=\"text-align: center;\">\r\n                                                    <strong>370</strong><strong>元/张</strong>\r\n                                                </p>\r\n                                            </td>\r\n                                            <td width=\"408\">\r\n                                                <div align=\"left\">\r\n                                                    <ol>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                适用于所有人员，在本网站订购团购票，获取验证信息，现场拼团入内。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                        <li>\r\n                                                            <p>\r\n                                                                公众日三天内任选一天使用，拼团入内，入场当日单次有效。\r\n                                                            </p>\r\n                                                        </li>\r\n                                                    </ol>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </tbody>\r\n                                </table>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"detail_bar\">\r\n                        <div class=\"r_tebie\">\r\n                            <h2 class=\"title\">\r\n                            <a name=\"pinglun\"></a>\r\n                                <span>本票点评</span></h2>\r\n                            <div class=\"content_info\">\r\n                                <!--评论-->\r\n                               ");
	if (model.is_msg==1)
	{


	int comment_count = get_comment_count(model.id, "is_lock=0");

	templateBuilder.Append("<!--取得评论总数-->\r\n      <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n      <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.pagination.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\">\r\n        $(function(){\r\n          //初始化评论列表\r\n          AjaxPageList('#comment_list', '#pagination', 10, ");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append(", '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_list&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', '");
	templateBuilder.Append("/templates/hangzhan");
	templateBuilder.Append("/images/user_avatar.png');\r\n          //初始化发表评论表单\r\n          AjaxInitForm('comment_form', 'btnSubmit', 1);\r\n          $('#span_commmentbox').html('('+$('#commentbox_count').html()+')');\r\n        });\r\n      </");
	templateBuilder.Append("script>\r\n      <div class=\"comment_box\">\r\n        <h3 class=\"base_tit\"><span><a href=\"#Add\">发表评论</a></span>共有<em id=\"commentbox_count\">");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append("</em>访客发表了评论</h3>\r\n        <ol id=\"comment_list\" class=\"comment_list\">\r\n          <p style=\"line-height:35px;\">暂无评论，快来抢沙发吧！</p>        \r\n        </ol>\r\n      </div>\r\n      <div class=\"line20\"></div>\r\n      <div id=\"pagination\" class=\"flickr\"></div><!--放置页码-->\r\n      <div class=\"comment_add\">\r\n        <h3 class=\"base_tit\">我来说几句吧<a name=\"Add\"></a></h3>\r\n        <form id=\"comment_form\" name=\"comment_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_add&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\">\r\n        <div class=\"comment_editor\">\r\n          <textarea id=\"txtContent\" name=\"txtContent\" class=\"input\" style=\"width:658px;height:70px;\" datatype=\"*\" sucmsg=\" \"></textarea>\r\n        </div>\r\n        <div class=\"subcon\">\r\n          <input id=\"btnSubmit\" name=\"submit\" class=\"btn right\" type=\"submit\" value=\"提交评论（Ctrl+Enter）\" />\r\n          <span>验证码：</span>\r\n          <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input small\" datatype=\"s4-4\" errormsg=\"请填写4位验证码\" sucmsg=\" \" onkeydown=\"if(event.ctrlKey&&event.keyCode==13){document.getElementById('btnSubmit').click();return false};\"  />\r\n          <a href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n        </div>\r\n        </form>\r\n      </div>");


	}	//end for if

	templateBuilder.Append("\r\n                    \r\n                                <!--/评论-->\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"ticket_sidebar\">\r\n        </div>\r\n    </div>\r\n    <!--Footer-->\r\n    ");

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
