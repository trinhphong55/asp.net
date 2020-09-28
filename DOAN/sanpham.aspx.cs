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
    public partial class sanphamnam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               

                sanphambanchay.DataSource = sanphamtrangchu_BUS.sanphambanchay();
                sanphambanchay.DataBind();


                uudaidacbiet.DataSource = sanphamtrangchu_BUS.sanphamdacbiet();
                uudaidacbiet.DataBind();

                rptsanpham.DataSource = sanphamtrangchu_BUS.sanphamnam();
                rptsanpham.DataBind();
                 
            }
        }

        protected void loai_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maLoaiSP =  loaisp.SelectedItem.Value.ToString();
            rptsanpham.DataSource = LOAISP_BUS.LayDSLoaiSanPham(maLoaiSP);
            rptsanpham.DataBind();
        }

        protected void ddl_giasp_SelectedIndexChanged(object sender, EventArgs e)
        {
            int loaisapxep =Convert.ToInt32(ddl_giasp.SelectedItem.Value.ToString());
            if(loaisapxep==1)
            {
                rptsanpham.DataSource = LOAISP_BUS.sapxeptang();
                rptsanpham.DataBind();
            }
            else
            {
                rptsanpham.DataSource = LOAISP_BUS.sapxepgiam();
                rptsanpham.DataBind();
            }
        }
    }
}