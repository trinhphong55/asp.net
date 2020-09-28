using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class CTHD_BUS
    {
        public static bool ThemCTHD(CTHD_DTO cthd)
        {
            return CTHD_DAO.ThemCTHD(cthd);
        }
    }
}
