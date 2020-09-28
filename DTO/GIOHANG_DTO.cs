using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class GIOHANG_DTO
    {
        private int size;
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public int Size
        {
            get { return size; }
            set { size = value; }
        }
        private string tenTaiKhoan;

        public string TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
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

        public GIOHANG_DTO()
        {
            SoLuong = 1;
        }
    }
}
