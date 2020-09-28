using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.Data.SqlClient;
using System.Data;
namespace DOAN
{
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                if (!Page.IsPostBack)
                {
                  rptgiohang.DataSource = GIOHANG_BUS.LayGH(tenTK);
                   rptgiohang.DataBind();
                   lblTongTien.Text = GIOHANG_BUS.TinhTongTienGH(tenTK).ToString()+" "+"VND";
                   
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
            string tentk = cookie.Value;
            soluonggiohang.Text = GIOHANG_BUS.soluong(tentk)+" "+"Items";
            
        }

        protected void rptgiohang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (e.CommandName == "xoagh")
            {
                string tenTK = (cookie.Value).ToString();
                int id = Convert.ToInt32(e.CommandArgument);
                if (GIOHANG_BUS.xoagiohang(id, tenTK))
                {
                    
                    
                    rptgiohang.DataSource = GIOHANG_BUS.LayGH(tenTK);
                    rptgiohang.DataBind();
                    lblTongTien.Text = GIOHANG_BUS.TinhTongTienGH(tenTK).ToString() + " " + "VND";
                    Response.Redirect("giohang.aspx");
                }
                else
                {
                    Response.Write("<script>alert('xoa thất bại')</script>");
                }
               
            }
        }
    }
}