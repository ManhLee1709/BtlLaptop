using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Timkiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SanPham> dssanpham = (List<SanPham>)Application["Sanpham"];
            List<SanPham> dsloc = new List<SanPham>();
            
            string giatri = Request.QueryString["js_search"];
            if (giatri != null)
            {
                for (int h = 0; h < dssanpham.Count; h++)
                {
                    if (giatri.Equals(dssanpham[h].Loai.ToString()))
                    {
                        dsloc.Add(dssanpham[h]);
                    }
                }
                DSTimkiem.DataSource = dsloc;
                DSTimkiem.DataBind();
            }
        }
    }
}