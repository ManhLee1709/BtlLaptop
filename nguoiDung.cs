using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BtlLaptop
{
    public class nguoiDung
    {
        string ho;
        string ten;
        string email;
        string password;
        string sdt;

        public nguoiDung()
        {
        }

        public nguoiDung(string ho, string ten, string email, string password, string sdt)
        {
            this.Ho = ho;
            this.Ten = ten;
            this.Email = email;
            this.Password = password;
            this.Sdt = sdt;
        }

        public string Ho { get => ho; set => ho = value; }
        public string Ten { get => ten; set => ten = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Sdt { get => sdt; set => sdt = value; }


        public bool Login( string username , string mk )
        {
            if (String.Compare(username, email) == 0 && String.Compare(mk, password) == 0)
            {
                return true;
            }
            else
                return false;
        }

    }
}