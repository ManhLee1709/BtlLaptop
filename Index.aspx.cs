using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int a = (int) Application["online"];
            //string ip = Session["ip"].ToString();
            //online.InnerHtml = "Số lượt truy cập :" + a+" Địa chỉ ip:"+ip;
            if (Session["username"] != null)
            {
                ClickDangNhap.InnerText =  Session["username"].ToString();
                clickDangki.InnerHtml = "<a href ='Dangxuat.aspx'> Đăng xuất </a>";
            }    


            List<SanPham> ds = (List<SanPham>)(List<SanPham>)Application["Sanpham"];
            List<SanPham> mathanglaptop = new List<SanPham>();
            List<SanPham> mathangpc = new List<SanPham>();
            List<SanPham> mathangphukien = new List<SanPham>();
            List<SanPham> mathangmanhinh = new List<SanPham>();
            for (int i = 0; i < ds.Count; i++)
            {
                if (ds[i].Loai.Equals("laptop"))
                    mathanglaptop.Add(ds[i]);
                if (ds[i].Loai.Equals("pc"))
                    mathangpc.Add(ds[i]);
                if (ds[i].Loai.Equals("pk"))
                    mathangphukien.Add(ds[i]);
                if (ds[i].Loai.Equals("mh"))
                    mathangmanhinh.Add(ds[i]);
            }
           
            DSmathangLaptop.DataSource = mathanglaptop;
            DSmathangLaptop.DataBind();
            DanhSachMatHangPC.DataSource = mathangpc;
            DanhSachMatHangPC.DataBind();
            DanhSachPhuKien.DataSource = mathangphukien;
            DanhSachPhuKien.DataBind();
            DanhSachmathangmanhinh.DataSource = mathangmanhinh;
            DanhSachmathangmanhinh.DataBind();

        }
    }
}