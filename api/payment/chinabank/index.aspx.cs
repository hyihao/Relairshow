using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DTcms.Common;

namespace DTcms.Web.api.payment.chinabank
{
    public partial class index : System.Web.UI.Page
    {
        //必要的交易信息
        protected string v_amount;       // 订单金额
        protected string v_moneytype;    // 币种
        protected string v_md5info;      // 对拼凑串MD5私钥加密后的值
        protected string v_mid;		 // 商户号
        protected string v_url;		 // 返回页地址
        protected string v_oid;		 // 推荐订单号构成格式为 年月日-商户号-小时分钟秒

        //收货信息
        protected string v_rcvname;      // 收货人
        protected string v_rcvaddr;      // 收货地址
        protected string v_rcvtel;       // 收货人电话
        protected string v_rcvpost;      // 收货人邮编
        protected string v_rcvemail;     // 收货人邮件
        protected string v_rcvmobile;    // 收货人手机号

        //订货人信息
        protected string v_ordername;    // 订货人姓名
        protected string v_orderaddr;    // 订货人地址
        protected string v_ordertel;     // 订货人电话
        protected string v_orderpost;    // 订货人邮编
        protected string v_orderemail;   // 订货人邮件
        protected string v_ordermobile;  // 订货人手机号

        //两个备注
        protected string remark1;
        protected string remark2;

        protected void Page_Load(object sender, EventArgs e)
        {
            v_mid = "23090503";				 // 商户号，这里为测试商户号20000400，替换为自己的商户号即可
            v_url = "http://" + HttpContext.Current.Request.Url.Authority.ToLower() + "/api/payment/chinabank/return_url.aspx"; // 商户自定义返回接收支付结果的页面
            // MD5密钥要跟订单提交页相同，如Send.asp里的 key = "test" ,修改""号内 test 为您的密钥
            string key = "8B53F643A1139435";				 // 如果您还没有设置MD5密钥请登陆我们为您提供商户后台，地址：https://merchant3.chinabank.com.cn/
            // 登陆后在上面的导航栏里可能找到“资料管理”，在资料管理的二级导航栏里有“MD5密钥设置”
            // 建议您设置一个16位以上的密钥或更高，密钥最多64位，但设置16位已经足够了

            string order_no = DTRequest.GetFormString("pay_order_no").ToUpper();
            decimal order_amount = DTRequest.GetFormDecimal("pay_order_amount", 0);
            string user_name = DTRequest.GetFormString("pay_user_name");
            string subject = DTRequest.GetFormString("pay_subject");
            if (order_no == "" || order_amount == 0)
            {
                Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您提交的参数有误！")));
                return;
            }
            v_oid = order_no;

            if (v_oid == null || v_oid.Equals(""))
            {
                DateTime dt = DateTime.Now;
                string v_ymd = dt.ToString("yyyyMMdd"); // yyyyMMdd
                string timeStr = dt.ToString("HHmmss"); // HHmmss
                v_oid = v_ymd + v_mid + timeStr;
            }

            //判断金额
            Model.orders model = new BLL.orders().GetModel(v_oid);
            if (model == null)
            {
                Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您支付的订单号不存在或已删除！")));
                return;
            }
            if (model.order_amount != order_amount)
            {
                Response.Redirect(new Web.UI.BasePage().linkurl("error", "?msg=" + Utils.UrlEncode("对不起，您支付的订单金额与实际金额不一致！")));
                return;
            }

            v_amount = order_amount.ToString();

            v_moneytype = "CNY";

            string text = v_amount + v_moneytype + v_oid + v_mid + v_url + key; // 拼凑加密串

            v_md5info = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(text, "md5").ToUpper();



            //收货信息
            v_rcvname = model.accept_name;
            v_rcvaddr = model.address;
            v_rcvtel = model.telphone;
            v_rcvpost = model.post_code;
            v_rcvmobile = model.mobile;

            //订货人信息
            //v_ordername = Request["v_ordername"];
            //v_orderaddr = Request["v_orderaddr"];
            //v_ordertel = Request["v_ordertel"];
            //v_orderpost = Request["v_orderpost"];
            //v_orderemail = Request["v_orderemail"];
            //v_ordermobile = Request["v_ordermobile"];
            remark1 = "珠海航展门票中心-奇比拉航展门票购买";
          
        }
    }
}
