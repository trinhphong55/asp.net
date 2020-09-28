using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class sanphamtrangchu_BUS
    {
        public static List<SANPHAM_DTO> LayDSSanPham()
        {
            return sanphamtrangchu_DAO.LayDSSanPhamtrangchu();
       
        }
        public static List<SANPHAM_DTO> sanphambanchay()
        {
            return sanphamtrangchu_DAO.sanphambanchay();
        }
        public static List<SANPHAM_DTO> sanphamdacbiet()
        {
            return sanphamtrangchu_DAO.sanphamuudaidacbiet();
        }
        public static List<SANPHAM_DTO> sanphamnam()
        {
            return sanphamtrangchu_DAO.sanphamnam();
        }




        public static SANPHAM_DTO LaySanPham(string maSP)
        {
            if (sanphamtrangchu_DAO.KTSPTonTai(maSP))
            {
                return sanphamtrangchu_DAO.LaySanPham(maSP);
            }
            else
            {
                return null;
            }
        }

        public static List<SANPHAM_DTO> themgiohang(string maSP)
        {
            return sanphamtrangchu_DAO.sanphamgiohang(maSP);
        }

        public static List<SANPHAM_DTO> timkiem(string giatri)
        {
            
            return sanphamtrangchu_DAO.timkiem(giatri);
        }

    }
}
