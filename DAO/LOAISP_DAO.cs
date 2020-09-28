using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace DAO
{
    public class LOAISP_DAO
    {
        public static List<SANPHAM_DTO> LayDSSanPham(string maLoaiSP)
        {
            string query = "SELECT * FROM SanPham WHERE MaLoaiSP = @MaLoaiSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiSP", maLoaiSP);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }

        public static List<SANPHAM_DTO> sapxeptang()
        {
            string query = "select  * from SanPham order by  giatien asc";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<SANPHAM_DTO> lstSanPham = new List<SANPHAM_DTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConvertToDTO(dr));
            }
            return lstSanPham;
        }
        public static List<SANPHAM_DTO> sapxepgiam()
        {
            string query = "select  * from SanPham order by  giatien desc";
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
            sp.ThongTin = dr["ThongTin"].ToString();
            sp.GiaTien = Convert.ToInt32(dr["GiaTien"]);
            sp.SoLuongTonKho = Convert.ToInt32(dr["SoLuongTonKho"]);
            sp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            sp.AnhMinhHoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return sp;
        }
    }
}