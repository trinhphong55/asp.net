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
   public class HOADON_BUS
    {
       public static bool themhoadon(HOADON_DTO hd)
       {
           return HOADON_DAO.ThemHD(hd);
       }
       public static DataTable thongtinthanhtoan(string tenTk)
       {
           return HOADON_DAO.laythongtinhoadon(tenTk);
       }
       public static string ThemHD(HOADON_DTO hd)
       {
           try
           {
               hd.Mahd = (Convert.ToInt32(HOADON_DAO.LayMaHDLonNhat()) + 1).ToString("000");
           }
           catch (FormatException e)
           {
               hd.Mahd = "001";
           }
           if (HOADON_DAO.ThemHD(hd))
           {
               return hd.Mahd;
           }
           else
           {
               return null;
           }
       }
    }
}
