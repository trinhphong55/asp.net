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
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptSanPham.DataSource = sanphamtrangchu_BUS.LayDSSanPham();
                rptSanPham.DataBind();
                Repeater1.DataSource = sanphamtrangchu_BUS.LayDSSanPham();
                Repeater1.DataBind();
                Repeater2.DataSource = sanphamtrangchu_BUS.LayDSSanPham();
                Repeater2.DataBind();

               sanphambanchay.DataSource = sanphamtrangchu_BUS.sanphambanchay();
               sanphambanchay.DataBind();


               uudaidacbiet.DataSource = sanphamtrangchu_BUS.sanphamdacbiet();
               uudaidacbiet.DataBind();
            }
        }
    }
}