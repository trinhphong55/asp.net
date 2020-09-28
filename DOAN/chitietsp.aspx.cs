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
    public partial class chitietsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string maSP = Request.QueryString["MaSP"];
            SANPHAM_DTO sp = new SANPHAM_DTO();

            if (maSP == null)
            {
                Response.Redirect("sanpham.aspx");
            }
            else
            {
                sp = sanphamtrangchu_BUS.LaySanPham(maSP);
            }

            if (sp == null)
            {
                Response.Redirect("sanpham.aspx");
            }
            else
            {
                imgAnhMinhHoa.ImageUrl = "images/nam/mau1/" + sp.AnhMinhHoa;
                imgAnhMinhHoa1.ImageUrl = "images/nam/mau2/" + sp.AnhMinhHoa;
                imgAnhMinhHoa2.ImageUrl = "images/nam/mau3/" + sp.AnhMinhHoa;
                imgAnhMinhHoa3.ImageUrl = "images/nam/mau4/" + sp.AnhMinhHoa;

                tensanpham.Text = sp.TenSP;
                giasp.Text = sp.GiaTien.ToString() + "VND";
                soluong.Text = sp.SoLuongTonKho.ToString();
                imgAnh1.ImageUrl = "images/nam/mau1/" + sp.AnhMinhHoa;
                imgAnh2.ImageUrl = "images/nam/mau2/" + sp.AnhMinhHoa;
                imgAnh3.ImageUrl = "images/nam/mau3/" + sp.AnhMinhHoa;
                imgAnh4.ImageUrl = "images/nam/mau4/" + sp.AnhMinhHoa;
            }
        }

        protected void btn_giohang_Click(object sender, EventArgs e)
        {
            string maSP = Request.QueryString["MaSP"];
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                GIOHANG_DTO gh = new GIOHANG_DTO();
                gh.TenTaiKhoan = cookie.Value;
                gh.MaSP = Request.QueryString["MaSP"];
                gh.SoLuong = 1;

                if (RadioButton1.Checked == true)
                {
                    gh.Size = 38;
                }
                else if (RadioButton2.Checked == true)
                {
                    gh.Size = 39;
                }
                else if (RadioButton3.Checked == true)
                {
                    gh.Size = 40;
                }
                else
                {
                    gh.Size = 41;
                }

                if (GIOHANG_BUS.ThemGH(gh))
                {
                    Response.Write("<script>alert('Thêm thành công')</script>");
                    Response.Redirect("chitietsp.aspx?MaSP=" + maSP);
                }
                else
                {
                    Response.Write("<script>alert('Thêm thất bại')</script>");
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }

           

        }
    }
}