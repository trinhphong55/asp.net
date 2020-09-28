using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SANPHAM_DTO
    {
        private string maSP;

        public string MaSP
        {
            get { return maSP; }
            set { maSP = value; }
        }
        private string tenSP;

        public string TenSP
        {
            get { return tenSP; }
            set { tenSP = value; }
        }
        private string thongTin;

        public string ThongTin
        {
            get { return thongTin; }
            set { thongTin = value; }
        }
        private int giaTien;

        public int GiaTien
        {
            get { return giaTien; }
            set { giaTien = value; }
        }
        private int soLuongTonKho;

        public int SoLuongTonKho
        {
            get { return soLuongTonKho; }
            set { soLuongTonKho = value; }
        }
        private string maLoaiSP;

        public string MaLoaiSP
        {
            get { return maLoaiSP; }
            set { maLoaiSP = value; }
        }
        private string anhMinhHoa;

        public string AnhMinhHoa
        {
            get { return anhMinhHoa; }
            set { anhMinhHoa = value; }
        }
        private bool trangThai;

        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }
        public SANPHAM_DTO()
        {
            trangThai = true;
        }
    }
}
