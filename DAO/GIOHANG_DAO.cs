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
    public class GIOHANG_DAO
    {
        public static DataTable LayGH(string tenTK)
        {
            string query = "SELECT SP.AnhMinhHoa,gh.id, gh.MaSP, gh.size, TenSP, GiaTien, SoLuong, GiaTien * SoLuong AS ThanhTien FROM GioHang gh INNER JOIN SanPham SP ON gh.MaSP = SP.MaSP WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static bool KTGHTonTai(GIOHANG_DTO gh)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP and size=@size";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@size", gh.Size);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemGH(GIOHANG_DTO gh)
        {
            string query = "INSERT INTO GioHang (TenTaiKhoan, MaSP, SoLuong,size) VALUES (@TenTaiKhoan, @MaSP, @SoLuong,@size)";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            param[3] = new SqlParameter("@size", gh.Size);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaGH(GIOHANG_DTO gh)
        {
            string query = "UPDATE GioHang SET SoLuong = SoLuong + @SoLuong WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP and size=@size";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            param[3] = new SqlParameter("@size", gh.Size);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static bool XoaGH(int id, string tenTK)
        {
            string query = "delete giohang from giohang  WHERE id=@id and TenTaiKhoan=@tentaikhoan ";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@id", id);
            param[1] = new SqlParameter("@tentaikhoan", tenTK);
          
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }


        public static string soluonggiohang(string tentk)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tentk);
            return (DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]).ToString();
        }

        public static GIOHANG_DTO ConvertToDTO(DataRow dr)
        {
            GIOHANG_DTO gh = new GIOHANG_DTO();
            gh.TenTaiKhoan = dr["TenTaiKhoan"].ToString();
            gh.MaSP = dr["MaSP"].ToString();
            gh.SoLuong = Convert.ToInt32(dr["SoLuong"]);
            return gh;
        }
        public static bool XoaGHthanhtoan( string tenTK)
        {
            string query = "delete giohang from giohang  WHERE TenTaiKhoan=@tentaikhoan ";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@tentaikhoan", tenTK);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }
    }
}