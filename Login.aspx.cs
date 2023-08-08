using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
         
        }
        private string GetUserIP()
        {
            string ipList = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipList))
            {
                return ipList.Split(',')[0];
            }

            return Request.ServerVariables["REMOTE_ADDR"];
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string usernameL = Request.Form["emailLogin"];
                string passwordL = Request.Form["PasswordLogin"];
                
                
                List<nguoiDung> users = (List<nguoiDung>)Application["users"];
                //Response.Redirect("Index.aspx");
                if(usernameL == "" && passwordL == "")
                {
                    errorL.InnerHtml = "bạn chưa nhập cả tên đăng nhập và mật khẩu";
                    return;
                }
                if(passwordL.Length < 8)
                {
                    errorL.InnerHtml = "Mat Khau Lon Hon 8 ki tu";
                }
                if (usernameL != "" && passwordL != "")
                {
                    foreach (nguoiDung user in users)
                    {
                        if (user.Email == usernameL && user.Password == passwordL)
                        {
                            
                            Session["username"] = user.Ten + " " + user.Ho;
                            int a = (int)Application["online"];
                            a = a + 1;
                            Application["online"] = a;
                            Session["ip"] = GetUserIP();
                            Response.Redirect("Index.aspx");
                         
                            return;
                        }
                    }
                    
                    errorL.InnerHtml = " Mat khau lon hon 8 ki tu ";
                }
                    

                }
        }
    }
}