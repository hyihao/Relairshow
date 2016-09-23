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

namespace DTcms.Web.api.payment.chinabank
{
    public partial class return_url : System.Web.UI.Page
    {
        protected string v_oid;		// 订单号
        protected string v_pstatus;	// 支付状态码
        //20（支付成功，对使用实时银行卡进行扣款的订单）；
        //30（支付失败，对使用实时银行卡进行扣款的订单）；

        protected string v_pstring;	//支付状态描述
        protected string v_pmode;	//支付银行
        protected string v_md5info;	//MD5校验码
        protected string v_amount;	//支付金额
        protected string v_moneytype;	//币种		
        protected string remark1;	// 备注1
        protected string remark2;	// 备注1

        protected string v_md5str;

        protected string status_msg;

        protected void Page_Load(object sender, EventArgs e)
        {
            // MD5密钥要跟订单提交页相同，如Send.asp里的 key = "test" ,修改""号内 test 为您的密钥
            string key = "8B53F643A1139435";	// 如果您还没有设置MD5密钥请登陆我们为您提供商户后台，地址：https://merchant3.chinabank.com.cn/
            // 登陆后在上面的导航栏里可能找到“资料管理”，在资料管理的二级导航栏里有“MD5密钥设置”
            // 建议您设置一个16位以上的密钥或更高，密钥最多64位，但设置16位已经足够了

            v_oid = Request["v_oid"];
            v_pstatus = Request["v_pstatus"];
            v_pstring = Request["v_pstring"];
            v_pmode = Request["v_pmode"];
            v_md5str = Request["v_md5str"];
            v_amount = Request["v_amount"];
            v_moneytype = Request["v_moneytype"];
            remark1 = Request["remark1"];
            remark2 = Request["remark2"];

            string str = v_oid + v_pstatus + v_amount + v_moneytype + key;

            str = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "md5").ToUpper();

            if (str == v_md5str)
            {

                if (v_pstatus.Equals("20"))
                {
                    //支付成功
                    //在这里商户可以写上自己的业务逻辑
                    string tipMsg = string.Empty;
                    BLL.orders bll = new BLL.orders();
                    Model.orders model = bll.GetModel(v_oid);
                    if (model == null)
                    {
                        //写日志
                        //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "不存在\n", System.Text.Encoding.UTF8);
                        Response.Write("该订单号不存在");
                        return;
                    }
                    if (model.payment_status == 2) //已付款
                    {
                        //写日志
                        //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "已付款\n", System.Text.Encoding.UTF8);

                        Response.Write("success");
                        return;
                    }
                    if (model.order_amount != decimal.Parse(v_amount))
                    {
                        //写日志
                        //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "订单金额" + model.order_amount + "和支付金额" + total_fee + "不相符\n", System.Text.Encoding.UTF8);
                        Response.Write("订单金额和支付金额不相符");
                        return;
                    }
                    bool result = bll.UpdateField(v_oid, "trade_no='" + v_md5str + "',status=2,payment_status=2,payment_time='" + DateTime.Now + "'");
                    Response.Redirect(new Web.UI.BasePage().linkurl("payment", "succeed", v_oid));
                }
            }
            else
            {

                Response.Write("校验失败,数据可疑");
            }
        }
    }
}
