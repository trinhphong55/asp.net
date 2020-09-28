using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public  class TAIKHOAN_DTO
    {
        private string tenTaiKhoan;

        public string TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
        }
        private string matKhau;

        public string MatKhau
        {
            get { return matKhau; }
            set { matKhau = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string sdt;

        public string Sdt
        {
            get { return sdt; }
            set { sdt = value; }
        }
        private string diaChi;

        public string DiaChi
        {
            get { return diaChi; }
            set { diaChi = value; }
        }
        private string hoTen;

        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }
        private bool laAdmin;

        public bool LaAdmin
        {
            get { return laAdmin; }
            set { laAdmin = value; }
        }
        private bool trangThai;

        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }
        private string anhDaiDien;

        public string AnhDaiDien
        {
            get { return anhDaiDien; }
            set { anhDaiDien = value; }
        }
        public TAIKHOAN_DTO()
        {
            laAdmin = false;
            anhDaiDien = " ";
            trangThai = true;
        }
    }
}