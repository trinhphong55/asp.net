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
    public class CTHD_DAO
    {
        public static bool ThemCTHD(CTHD_DTO cthd)
        {
            string query = "INSERT INTO CTHoaDon (MaHD, MaSP, SoLuong, DonGia) VALUES (@MaHD, @MaSP, @SoLuong, @DonGia)";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@MaHD", cthd.MaHD);
            param[1] = new SqlParameter("@MaSP", cthd.MaSP);
            param[2] = new SqlParameter("@SoLuong", cthd.SoLuong);
            param[3] = new SqlParameter("@DonGia", cthd.DonGia);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
    }
}
