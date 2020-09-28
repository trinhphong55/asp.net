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
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_dangnhap_Click1(object sender, EventArgs e)
        {
            string tenTK = name.Text;
            string mk = pass.Text;
           


            if (TAIKHOAN_BUS.KTDangNhap(tenTK, mk))
            {
                HttpCookie cookie = new HttpCookie("TenTK");
                cookie.Value = tenTK;
                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);
                Response.Write("<script>alert('Đăng nhập thành công')</script>");
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại, vui lòng kiểm tra lại tài khoản hoặc mật khẩu')</script>");
            }
        }

  

    }
}