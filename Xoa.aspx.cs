using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Xoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ma"];
            long d = 0;
            List<SanPham> dsgiohang = new List<SanPham>();
            dsgiohang = (List<SanPham>)Session["giohang"];
            for (int h = 0; h < dsgiohang.Count; h++)
            {
                d = d + dsgiohang[h].Thanhtien;
            }
            

            List<SanPham> spmoi = new List<SanPham>();

            for (int h = 0; h < dsgiohang.Count; h++)
            {

                if (dsgiohang[h].Soluong > 0)
                {
                    spmoi.Add(dsgiohang[h]);
                }


            }
            
            Session["giohang"] = spmoi;


            Response.Redirect("Tranggiohang.aspx");
        }
    }
}