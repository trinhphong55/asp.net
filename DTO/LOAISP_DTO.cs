using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
   public class LOAISP_DTO
    {
        private string maLoaiSP;

        public string MaLoaiSP
        {
            get { return maLoaiSP; }
            set { maLoaiSP = value; }
        }
        private string tenLoaiSP;

        public string TenLoaiSP
        {
            get { return tenLoaiSP; }
            set { tenLoaiSP = value; }
        }
        private bool trangThai;

        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }

        public LOAISP_DTO()
        {
            TrangThai = true;
        }
    }
}
