using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;
using DAO;
namespace BUS
{
    public class GIOHANG_BUS
    {
         public static DataTable LayGH(string tenTK)
        {
            return GIOHANG_DAO.LayGH(tenTK);
        }

        public static int TinhTongTienGH(string tenTK)
        {
            DataTable dtbKetQua = GIOHANG_DAO.LayGH(tenTK);
            int tongTien = 0;
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                tongTien += Convert.ToInt32(dr["ThanhTien"]);
            }
            return tongTien;
        }

        public static bool ThemGH(GIOHANG_DTO gh)
        {
            if (GIOHANG_DAO.KTGHTonTai(gh))
            {
                return GIOHANG_DAO.SuaGH(gh);
            }
            else
            {
                return GIOHANG_DAO.ThemGH(gh);
            }
        }
        public static bool xoagiohang(int id, string tenTK)
        {
            return GIOHANG_DAO.XoaGH(id, tenTK);
        }
        public static bool xoagiohangthanhtoan(string tenTK)
        {
            return GIOHANG_DAO.XoaGHthanhtoan(tenTK);
        }

        public static string soluong(string tentk)
        {
            return GIOHANG_DAO.soluonggiohang(tentk);
        }
    }
}
