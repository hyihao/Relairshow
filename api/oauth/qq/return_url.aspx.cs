using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTcms.API.OAuth;
using DTcms.Common;
using LitJson;

namespace DTcms.Web.api.oauth.qq
{
    public partial class return_url : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //取得返回参数
            string state = DTRequest.GetQueryString("state");
            string code = DTRequest.GetQueryString("code");

            string access_token = string.Empty;
            string expires_in = string.Empty;
            string client_id = string.Empty;
            string openid = string.Empty;

            if (Session["oauth_state"] == null || Session["oauth_state"].ToString() == "" || state != Session["oauth_state"].ToString())
            {
                Response.Write("出错啦，state未初始化！");
                return;
            }
            
            //第一步：获取Access Token
            Dictionary<string, object> dic1 = qq_helper.get_access_token(code, state);
            if (dic1 == null || !dic1.ContainsKey("access_token"))
            {
                Response.Write("错误代码：，无法获取Access Token，请检查App Key是否正确！");
                return;
            }
            access_token = dic1["access_token"].ToString();
            expires_in = dic1["expires_in"].ToString();

            //第二步：通过Access Token来获取用户的OpenID
            Dictionary<string, object> dic2 = qq_helper.get_open_id(access_token);
            if (dic2 == null || !dic2.ContainsKey("openid"))
            {
                if (dic2.ContainsKey("error"))
                {
                    Response.Write("error：" + dic2["error"] + ",error_description：" + dic2["error_description"]);
                }
                else
                {
                    Response.Write("出错啦，无法获取用户授权Openid！");
                }
                return;
            }
            client_id = dic2["client_id"].ToString();
            openid = dic2["openid"].ToString();
            //储存获取数据用到的信息
            Session["oauth_name"] = "qq";
            Session["oauth_access_token"] = access_token;
            Session["oauth_openid"] = openid;

            Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig();

            #region "暂时注释"
            //第三步：跳转到指定页面,获取授权信息
            string result = Utils.UrlExecute(siteConfig.webpath + "api/oauth/" + Session["oauth_name"].ToString() + "/result_json.aspx");
            if (result.Contains("error"))
            {
               Response.Write("{\"status\": 0, \"msg\": \"错误提示：请检查URL是否正确！\"}");
                return;
            }
            //反序列化JSON
            Dictionary<string, object> dic = JsonMapper.ToObject<Dictionary<string, object>>(result);
            if (dic["ret"].ToString() != "0")
            {
               Response.Write("{\"status\": 0, \"msg\": \"错误代码：" + dic["ret"] + "，描述：" + dic["msg"] + "\"}");
                return;
            }
            if (!string.IsNullOrEmpty(dic["nick"].ToString()))
            {
                Session["nickname"] = dic["nick"].ToString();
            }
            else
            {
                Session["nickname"] = "haha";
            }

           
            Response.Redirect(new Web.UI.BasePage().linkurl("index"));

            //第三步：跳转到指定页面
           // Response.Redirect(new Web.UI.BasePage().linkurl("oauth_login"));
            //Response.Write("\access_token:" + access_token + ",openid:" + openid);
           // return;
            #endregion

        }
    }
}