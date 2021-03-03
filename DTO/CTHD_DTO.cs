using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CTHD_DTO
    {
          public  string maHD;

        public string MaHD
        {
            get { return maHD; }
            
        }
        private string maSP;

        public string MaSP
        {
            get { return maSP; }
            set { maSP = value; }
        }
        private int soLuong;

        public int SoLuong
        {
            get { return soLuong; }
            set { soLuong = value; }
        }
        private int donGia;

        public int DonGia
        {
            get { return donGia; }
            set { donGia = value; }
        }

      
    }
}
