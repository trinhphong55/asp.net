using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class LOAISP_BUS
    {
        public static List<SANPHAM_DTO> LayDSLoaiSanPham(string maLoaiSP)
        {
            return LOAISP_DAO.LayDSSanPham(maLoaiSP);
        }
        public static List<SANPHAM_DTO> sapxeptang()
        {
            return LOAISP_DAO.sapxeptang();
        }
        public static List<SANPHAM_DTO> sapxepgiam()
        {
            return LOAISP_DAO.sapxepgiam();
        }
    }
}
