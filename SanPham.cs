using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BtlLaptop
{
    public class SanPham
    {
        int ma;
        string ten;
        long gia;
        string loai;
        string noidung;
        string img;
        string img1;
        string img2;
        string img3;
        int soluong;

        public SanPham()
        {
        }

        public SanPham(int ma, string ten, long gia,string loai, string noidung, string img, string img1, string img2, string img3)
        {
            this.ma = ma;
            this.ten = ten;
            this.gia = gia;
            this.noidung = noidung;
            this.loai = loai;
            this.soluong = 1;
            this.img = img;
            this.img1 = img1;
            this.img2 = img2;
            this.img3 = img3;
        }

        public string Loai { get => loai; set => loai = value; }
        public int Ma { get => ma; set => ma = value; }
        public int Soluong { get => soluong; set => soluong = value; }
        public string Ten { get => ten; set => ten = value; }
        public long Gia { get => gia; set => gia = value; }
        public long Thanhtien { get { return gia * soluong; }  }
        public string Noidung { get => noidung; set => noidung = value; }
        public string Img { get => img; set => img = value; }
        public string Img1 { get => img1; set => img1 = value; }
        public string Img2 { get => img2; set => img2 = value; }
        public string Img3 { get => img3; set => img3 = value; }
    }
}