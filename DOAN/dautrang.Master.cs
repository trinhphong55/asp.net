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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                TAIKHOAN_DTO tk = new TAIKHOAN_DTO();
                lblLoiChao.Text =  cookie.Value;
                dangki.Visible = false;
                dangnhap.Visible = false;
                imganhdaidien.Visible = true;
                string tentk = cookie.Value;
                lbl_soluonggiohang.Text = GIOHANG_BUS.soluong(tentk);

            }
            else
            {
                lblLoiChao.Visible = false;
                loichao.Visible = true;
                loichao.Text = " asp.net";
              
            }
        
        }

        protected void btn_dangxuat_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            lblLoiChao.Visible = false;

            Response.Redirect(Request.RawUrl);
            Response.Redirect("dangnhap.aspx");
        }

        protected void timkiem_Click(object sender, EventArgs e)
        {
           string giatri = txttim.Text;
            Response.Redirect("timkiem.aspx?giatri="+giatri+"");
        }

       

    }
}