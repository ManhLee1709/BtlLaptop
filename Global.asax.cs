using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BtlLaptop
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
           
            // những tài khoản người dùng
            Application["users"] = new List<nguoiDung>();
            Application["online"] = 0;
            List<nguoiDung> users = (List<nguoiDung>)Application["users"];
            users.Add(new nguoiDung("Lê", "Mạnh", "admin1@gmail.com", "12345678", "0900000001"));
            users.Add(new nguoiDung("Khải", "Lâm", "admin2@gmail.com", "123456", "0900000002"));


            // các sản phẩn của laptop số lượng 6 cái cố định
            
            List<SanPham> sanPhams = new List<SanPham>();


            //lap 1
            sanPhams.Add(new SanPham(0, "Laptop HP 15s-du1105TU 2Z6L3PA", 11490000,"laptop", "(i3-10110U/ 4GB/ 256GB SSD/ 15.6/ VGA ON/ Win11/ Silver)", ".\\assets\\img\\laptop1_1.jpg", ".\\assets\\img\\laptop2_1.jpg", ".\\assets\\img\\laptop3_1.jpg", ".\\assets\\img\\laptop4_1.jpg"));


            //lap 2
            sanPhams.Add(new SanPham(1, "Laptop Acer Aspire A315-58-35AG", 11990000, "laptop", " (i3 1115G1/4Gb/256Gb SSD/ 15.6\" FHD / VGA ON / Win11 / Silver)",  ".\\assets\\img\\laptop1_2.jpg", ".\\assets\\img\\laptop2_2.jpg", ".\\assets\\img\\laptop3_2.jpg", ".\\assets\\img\\laptop4_2.jpg"));


            //lap 3
            sanPhams.Add(new SanPham(2, "Laptop Asus Zenbook Flip 13 UX363EA-HP532T", 23990000, "laptop", "(i5-1135G7/ 8GB/ 512Gb SSD/ 13.3FHD Touch/ VGA ON/ Win10/ Pine Grey/ Túi Sleeve/ Pen/ NumPad)",  ".\\assets\\img\\laptop1_3.jpg", ".\\assets\\img\\laptop2_3.jpg", ".\\assets\\img\\laptop3_3.jpg", ".\\assets\\img\\laptop4_3.jpg"));


            //lap 4
            sanPhams.Add(new SanPham(3, "Laptop Apple Macbook Air MGN93(SA/A)", 23990000, "laptop", "Apple M1 8Gb/ 256Gb (Silver)", ".\\assets\\img\\laptop1_4.jpg", ".\\assets\\img\\laptop2_4.jpg", ".\\assets\\img\\laptop3_4.jpg", ".\\assets\\img\\laptop4_4.jpg"));


            //lap 5
            sanPhams.Add(new SanPham(4, "Laptop Gaming Acer Nitro Eagle AN515 57 54MV NH.QENSV.003", 22990000, "laptop", "(Core i5-11400H/8Gb/512Gb SSD/15.6 FHD / GTX3050 4GB / Win11 / Black)",  ".\\assets\\img\\laptop1_5.jpg", ".\\assets\\img\\laptop2_5.jpg", ".\\assets\\img\\laptop3_5.jpg", ".\\assets\\img\\laptop4_5.jpg"));


            //lap 6
            sanPhams.Add(new SanPham(5, "Laptop Dell Vostro 3400 V4I7015W1", 23590000, "laptop", "(I7 1165G7/8Gb/512Gb SSD/ 14.0 FHD / MX330 2GB / Win11 Home + Office HS / Black)", ".\\assets\\img\\laptop1_6.jpg", ".\\assets\\img\\laptop2_6.jpg", ".\\assets\\img\\laptop3_6.jpg", ".\\assets\\img\\laptop4_6.jpg"));

            

                     //   các sản phẩn của PC số lượng 3 cái cố định
                       

            // Pc 1
            sanPhams.Add(new SanPham(6, "combo pc sô 1", 5300000, "pc",
                           "Main H110 Cpu G4400 Ram 4G HDD 500G+SSD 120G", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg"));

            //  Pc 2
            sanPhams.Add(new SanPham(7, "combo pc số 2", 18150000, "pc",
                           "Main H610M Cpu i7-12700 Ram 8GB HDD 500G+SSD 120G",  ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg"));

            //Pc 3
            sanPhams.Add(new SanPham(8, "combo pc số 3", 10100000, "pc",
                           "Main H610M Cpu i3-12100 Ram 8GB HDD 500G+SSD 120G",  ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg", ".\\assets\\img\\pc1.jpg"));


           

                      //  các sản phẩn của phụ kiện số lượng 4 cái cố định
                       

            // phụ kiện 1
            sanPhams.Add(new SanPham(9, "Giá treo tai nghe Gỗ (Headphone Stand) ", 199000,"pk", "không có nội dung" , ".\\assets\\img\\phukien1.jpg", ".\\assets\\img\\phukien1.jpg", ".\\assets\\img\\phukien1.jpg", ".\\assets\\img\\phukien1.jpg"));
            // phụ kiện 2
            sanPhams.Add(new SanPham(10, "Tai Nghe Zidli Z198", 199000, "không có nội dung", "pk", ".\\assets\\img\\phukien2.jpg", ".\\assets\\img\\phukien2.jpg", ".\\assets\\img\\phukien2.jpg", ".\\assets\\img\\phukien2.jpg"));
            // phụ kiện 3
            sanPhams.Add(new SanPham(11, "Tai nghe Logitech G435 LightSpeed Wireless Blue Raspberry", 1399000, "pk", "không có nội dung", ".\\assets\\img\\phukien3.png", ".\\assets\\img\\phukien3.png", ".\\assets\\img\\phukien3.png", ".\\assets\\img\\phukien3.png"));
            //  phụ kiện 4
            sanPhams.Add(new SanPham(12, "Micro Kingston HyperX SoloCast", 1489000, "pk", "không có nội dung", ".\\assets\\img\\phukien4.jpg", ".\\assets\\img\\phukien4.jpg", ".\\assets\\img\\phukien4.jpg", ".\\assets\\img\\phukien4.jpg"));


                       // các sản phẩn của màn hình 3 cái


            //  màn hình 1
            sanPhams.Add(new SanPham(13, "MÀN HÌNH DELL LCD LED E1916HV", 2990000,"mh", "18.5Inch", ".\\assets\\img\\manhinh1_1.jpg", ".\\assets\\img\\manhinh2_1.jpg", ".\\assets\\img\\manhinh3_1.jpg", ".\\assets\\img\\manhinh4_1.jpg"));

            //  màn hình 2
            sanPhams.Add(new SanPham(14, "Màn hình Dell E1715S", 2900000, "mh", "17 inch",  ".\\assets\\img\\manhinh1_2.jpg", ".\\assets\\img\\manhinh2_2.jpg", ".\\assets\\img\\manhinh3_2.jpg", ".\\assets\\img\\manhinh4_2.jpg"));


            // màn hình 3
            sanPhams.Add(new SanPham(15, "Màn hình Dell P2018H ", 2890000, "mh", "19.5 inch",  ".\\assets\\img\\manhinh1_3.jpg", ".\\assets\\img\\manhinh3_3.jpg", ".\\assets\\img\\manhinh_1_3.jpg", ".\\assets\\img\\manhinh2_3.jpg"));

            Application["Sanpham"] = sanPhams;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<SanPham> sanPhams = new List<SanPham>();
            Session["giohang"] = sanPhams ;
            Session["ip"]="";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}