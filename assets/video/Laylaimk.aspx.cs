using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Laylaimk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLaylaimk_Click(object sender, EventArgs e)
        {

            if(IsPostBack)
            {
                string username = Request.Form["emailLaylaimk"];
                string tel = Request.Form["telLaylaimk"];
                List<nguoiDung> users = (List<nguoiDung>)Application["users"];
                bool check = false;
                if (username == "" || tel == "")
                {
                    errorL.InnerHtml = "Bạn chưa nhập email với tel rùi";
                }
                else
                if (username == "")
                {
                    errorL.InnerHtml = "Bạn chưa nhập email";
                }
                else
                if (tel == "")
                {
                    errorL.InnerHtml = "Bạn chưa nhập số điện thoại đăng kí";
                }
                else

                    if (username != "" && tel != "")
                {
                    foreach (nguoiDung user in users)
                    {
                       
                        if (username == user.Email && tel == user.Sdt)
                        {
                            passL.InnerHtml = "mật khẩu của bạn là" + user.Password;
                            errorL.InnerHtml = "";
                            check = true;
                            break;
                        }
                    }

                    if(check == false)
                    {
                        errorL.InnerHtml = "tài khoản không tồn tại";
                    }




                }
             
     
                            
               
            }    

  
             


        }
    }
}