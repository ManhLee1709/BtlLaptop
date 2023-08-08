using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace BtlLaptop
{
    public partial class registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
        protected void btnDangki_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string ho = Request.Form["ho"];
                string ten = Request.Form["ten"];
                string email = Request.Form["email"];
                string sdt = Request.Form["tel"];
                string mk = Request.Form["password"];
                string rmk = Request.Form["PasswordAgin"];

                
                List<nguoiDung> users = (List<nguoiDung>)Application["users"];
                bool check = true;


                if (! mk.Equals(rmk)){
                    btn_error.InnerHtml = mk+"Mật khẩu chưa khớp"+rmk;
                    check = false;
                }
                
                if (email != "" && mk != "" && rmk != "" && sdt != "")
                {
                    foreach (nguoiDung user in users)
                    {
                        if (ho == user.Ho && ten == user.Ten)
                        {
                            btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }
                    if (check)
                    {
                        
                        nguoiDung newUser = new nguoiDung(ho, ten, email, mk, sdt);
                        users.Add(newUser);
                        Application["users"] = users;
                        Response.Write("<script> alert('Đăng ký thành công');</script>");
                    }
                }

            }
        }
    }
}
/*                bool checkmk = Regex.IsMatch(mk, ".^[a-cD-F]+");
                bool checkA = Regex.IsMatch(mk, "^(?=.*?[A-Z])");
                bool checka = Regex.IsMatch(mk, "^(?=.*?[a-z])");
                bool check0 = Regex.IsMatch(mk, "^(?=.*?[0-9])");*/
/*(?=.*?[#?!@$%^&*-])*/
/*                if (!checkA)
                {
                    Response.Write("<script> alert('Phải có chữ hoa');    </script>");
                    
                    check = false;
                }
                if (!checka)
                {
                    Response.Write("<script> alert('Phải có chữ thường');    </script>");

                    check = false;
                }
                if (!check0)
                {
                    Response.Write("<script> alert('Phải có số');    </script>");

                    check = false;
                }*/