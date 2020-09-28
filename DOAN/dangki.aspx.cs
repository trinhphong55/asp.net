using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace DOAN
{
    public partial class dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_danngki_Click(object sender, EventArgs e)
        {
            TAIKHOAN_DTO tk = new TAIKHOAN_DTO();
            tk.TenTaiKhoan = tendangnhap.Text;
            tk.HoTen = tentaikhoan.Text;
            tk.MatKhau = password.Text;
            tk.Email = gmail.Text;
            tk.Sdt = sodienthoai.Text;
            tk.DiaChi = diachi.Text;


            if (TAIKHOAN_BUS.ThemTK(tk))
            {
                Response.Write("<script>alert('Đăng kí thành công')</script>");
                Response.Redirect("Dangnhap.aspx");
            }
            else
            {
                Response.Write("<script>alert('Tên tài khoản đã có người sử dụng. Đăng kí thất bại')</script>");
            }
        }
    }
}