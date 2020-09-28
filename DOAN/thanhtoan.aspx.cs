using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BUS;
using DTO;
namespace DOAN
{
    public partial class thanhtoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                rpt_thanhtoan.DataSource = HOADON_BUS.thongtinthanhtoan(tenTK);
                rpt_thanhtoan.DataBind();
                lbl_tongtien.Text = string.Format("{0:n0}", GIOHANG_BUS.TinhTongTienGH(tenTK)) + " VND";

                TAIKHOAN_DTO tk = TAIKHOAN_BUS.laythongtin(tenTK);

                txt_name.Text = tk.HoTen;
                txt_diachi.Text = tk.DiaChi;
                txt_email.Text = tk.Email;
                txt_sdt.Text = tk.Sdt;

            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }



        }

        protected void btn_thanhtoan_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                HOADON_DTO hd = new HOADON_DTO();
                hd.TenTaiKhoan = tenTK;
                hd.SDTGiaoHang = txt_sdt.Text;
                hd.DiaChiGiaoHang = txt_diachi.Text;
                hd.TongTien = GIOHANG_BUS.TinhTongTienGH(tenTK);
                hd.NgayMua = DateTime.Now;
                hd.Mahd = HOADON_BUS.ThemHD(hd);

                DataTable dtbTTTT = GIOHANG_BUS.LayGH(tenTK);
                foreach (DataRow dr in dtbTTTT.Rows)
                {
                    CTHD_DTO cthd = new CTHD_DTO();
                    cthd.MaHD = hd.Mahd.ToString();
                    cthd.MaSP = dr["MaSP"].ToString();
                    cthd.SoLuong = Convert.ToInt32(dr["SoLuong"]);
                    cthd.DonGia = Convert.ToInt32(dr["GiaTien"]);
                    CTHD_BUS.ThemCTHD(cthd);
                }
                 if( GIOHANG_BUS.xoagiohangthanhtoan(tenTK))
                    {
                        Response.Write("<script>alert('dat hang thanh cong')</script>");
                        Response.Redirect("trangchu.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('dat hang that bai')</script>");
                    }
            }
            else
            {
                Response.Redirect("dangnhap.aspx");
            }
        }
    }
}