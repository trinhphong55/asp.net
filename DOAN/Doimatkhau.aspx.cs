using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace DOAN
{
    public partial class quenmatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_doimatkhau_Click(object sender, EventArgs e)
        {
            TAIKHOAN_DTO tk = new TAIKHOAN_DTO();
            HttpCookie cookie = Request.Cookies["TenTK"];
           

            if (cookie != null)
            {
                tk.TenTaiKhoan = cookie.Value;

                string matkhau = tk.MatKhau = newpassword.Text;
                string nhaplaimatkhau = enterthepassword.Text;
               if(TAIKHOAN_BUS.doimatkhau(tk) && matkhau==nhaplaimatkhau)
               {
                   Response.Write("<script>alert('Đỗi Mật Khẩu thành Công')</script>");
                   cookie.Expires = DateTime.Now.AddDays(-1);
                   Response.Cookies.Add(cookie);
                  
                   Response.Redirect("dangnhap.aspx");
                  
                  

               }
                else
               {
                   Response.Write("<script>alert('Có Lỗi Xãy RA')</script>");
               }

            }
            else
            {
                Response.Write("<script>alert('Có Lỗi Xãy RA')</script>");

            }
        }
    }
}