using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using DTO;
using BUS;
namespace DOAN
{
    public partial class timkiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string giatri = Request.QueryString["giatri"];
            if (giatri!=null)
            {
              
                spnam.DataSource = sanphamtrangchu_BUS.timkiem(giatri);
                spnam.DataBind();
            }
            else
            {
                thongbao.Visible = true;
                thongbao.Text = "Không tìm thấy sản phẩm bạn cần tìm";
            }
        }
    }
}