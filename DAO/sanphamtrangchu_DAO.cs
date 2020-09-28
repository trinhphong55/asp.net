using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;
namespace DAO
{
    public class sanphamtrangchu_DAO
    {
        public static List<SANPHAM_DTO> LayDSSanPhamtrangchu()
        {

            string query = "select* from sanpham,loaisanpham where SanPham.MaLoaiSP=LoaiSanPham.MaLoaiSP and LoaiSanPham.TenLoaiSP = N'Sản Phẩm Trang Chủ'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }

        public static List<SANPHAM_DTO> sanphambanchay()
        {

            string query = "select* from sanpham,loaisanpham where SanPham.MaLoaiSP=LoaiSanPham.MaLoaiSP and LoaiSanPham.TenLoaiSP = N'Sản Phẩm Bán Chạy'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }

        public static List<SANPHAM_DTO> sanphamuudaidacbiet()
        {

            string query = "select* from sanpham,loaisanpham where SanPham.MaLoaiSP=LoaiSanPham.MaLoaiSP and LoaiSanPham.TenLoaiSP = N'ƯU Đãi Đặc Biệt'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }
        public static SANPHAM_DTO ConvertToDTO(DataRow dr)
        {
            SANPHAM_DTO sp = new SANPHAM_DTO();
            sp.MaSP = dr["MaSP"].ToString();
            sp.TenSP = dr["TenSP"].ToString();
            sp.ThongTin= dr["ThongTin"].ToString();
            sp.GiaTien = Convert.ToInt32(dr["GiaTien"]);
            sp.SoLuongTonKho = Convert.ToInt32(dr["SoLuongTonKho"]);
            sp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            sp.AnhMinhHoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return sp;
        }

        public static List<SANPHAM_DTO> sanphamnam()
        {

            string query = "select top 12   * from sanpham,loaisanpham where SanPham.MaLoaiSP=LoaiSanPham.MaLoaiSP and LoaiSanPham.TenLoaiSP = N'Sản Phẩm Nam'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }



        public static bool KTSPTonTai(string maSP)
        {
            string query = "SELECT COUNT(*) FROM SanPham WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", maSP);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static SANPHAM_DTO LaySanPham(string maSP)
        {
            string query = "SELECT * FROM SanPham WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", maSP);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);

        }
        public static List<SANPHAM_DTO> sanphamgiohang(string maSP)
        {

            string query = " select * from SanPham where masp=@Masp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@masp", maSP);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }



        public static List<SANPHAM_DTO> timkiem(string giatri)
        {

            string query = "select * from sanpham where tensp like '%" +giatri+ "%'  ";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@giatri", giatri);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }




  

    }
}
