using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class TAIKHOAN_BUS
    {
        public static bool KTDangNhap(string tenTK, string mk)
        {
            if (!TAIKHOAN_DAO.KTTKTonTai(tenTK))
            {
                return false;
            }
            else
            {
                return mk == TAIKHOAN_DAO.LayMatKhau(tenTK);
            }

           
        }
        public static bool ThemTK (TAIKHOAN_DTO tk)
        {
            if(TAIKHOAN_DAO.KTTKTonTai(tk.TenTaiKhoan))
            {
                return false;
            }
            else
            {
                return TAIKHOAN_DAO.ThemTK(tk);
            }
        }

        public static bool doimatkhau(TAIKHOAN_DTO tk)
        {
                return TAIKHOAN_DAO.doimatkhau(tk);

        }

        public static TAIKHOAN_DTO laythongtin(string tenTK)
        {
            return TAIKHOAN_DAO.laythongtinkhachhang(tenTK);
        }
    }
}
