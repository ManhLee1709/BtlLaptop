using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["check"] = 1;
            Session.Abandon();
            int a = (int)Application["online"];
            if (a > 0)
            {
                a--;
                Application["online"] = a;
            }
            Response.Redirect("Login.aspx");
            

        }
    }
}