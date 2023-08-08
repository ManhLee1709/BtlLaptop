using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlLaptop
{
    public partial class Tranggiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            List<SanPham> dssanpham = (List<SanPham>) Application["Sanpham"];
            List<SanPham> dsgiohang = new List<SanPham>();
            dsgiohang = (List<SanPham>)Session["giohang"];
            //int soluong = int.Parse(Request.QueryString.Get("soluong"));
            
            string id = Request.QueryString.Get("ma");
            int d = 0;
            //List<SanPham> dsgiohang = new List<SanPham>();
            //dsgiohang = (List<SanPham>)Session["giohang"];
            if (id != null)
            {
                for (int h = 0; h < dsgiohang.Count; h++)
                {
                    if (id.Equals(dsgiohang[h].Ma.ToString()))
                    {
                        dsgiohang[h].Soluong++;
                        d = 1;
                    }
                }
                if (d == 0)
                    for (int i = 0; i < dssanpham.Count; i++)
                        if (id.Equals(dssanpham[i].Ma.ToString()))
                        {
                            dsgiohang.Add(dssanpham[i]);
                        }

                
            }
            Session["giohang"] = dsgiohang;
            demSoHang.Visible = true;
            //long tt = 0;
            //for (int i = 0; i < dsgiohang.Count; i++)
            //    tt += dsgiohang[i].Thanhtien;
            //tongtien.InnerHtml = " Tổng tiền "+tt;
            ListViewCartLaptop.DataSource = dsgiohang;
            ListViewCartLaptop.DataBind();
            if (Session["username"] != null)
            {

                ClickDangNhap.InnerText = Session["username"].ToString();
                clickDangki.InnerHtml = "<a href ='Dangxuat.aspx'> Đăng xuất </a>";
               
            }
        }
    }
}
                
                    //foreach (string productID in productsID)
                    //{
                    //    foreach (laptop lap in productLaptopList)
                    //    {
                    //        if (Convert.ToString(lap.MaLaptop) == productID)
                    //        {
                    //            soluot++;
                    //            LaptopcartList.Add(lap);

                    //        }
                    //    }

                        //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
                    //}
                   





                    //Display products price toan bo san pham
                    //int productsPrice = 0;
                    //foreach (laptop splap in LaptopcartList) productsPrice += Int32.Parse(product.Price);
                    //products_price.InnerHtml = $"{productsPrice} <span class='cart__product-price-unit'>đ</span>";

                    ////Display delivery price phi ship
                    ///**const int DELIVERY = 25000;
                    //delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";**/

                    ////Display order total price
                    //int orderTotal = productsPrice;
                    //order_total_price.InnerHtml = $"{orderTotal} <span class='cart__product-price-unit'>đ</span>";
                
        
    
