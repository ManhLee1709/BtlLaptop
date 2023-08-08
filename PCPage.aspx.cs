using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class PCPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] != null)
            {
                ClickDangNhap.InnerText = Session["username"].ToString();
                clickDangki.InnerHtml = "<a href ='Dangxuat.aspx'> Đăng xuất </a>";
            }

            string id = Request.QueryString.Get("ma");



            if (id != null)
            {
                List<SanPham> mathangPC = (List<SanPham>)Application["Sanpham"];
                List<SanPham> mathangCenter = new List<SanPham>();
                List<SanPham> sptt = new List<SanPham>();



                foreach (SanPham sanPham in mathangPC)
                {

                    if (sanPham.Ma.ToString().Equals(id))
                    {

                        mathangCenter.Add(sanPham);

                    }

                }
                for (int i = 0; i < mathangPC.Count; i++)
                    if (mathangCenter[0].Loai.Equals(mathangPC[i].Loai) && sptt.Count < 5)
                        sptt.Add(mathangPC[i]);

                ListSPTuongtu.DataSource = sptt;
                ListSPTuongtu.DataBind();
                



                LVmathangCenter.DataSource = mathangCenter;
                LVmathangCenter.DataBind();
                

            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}

    
