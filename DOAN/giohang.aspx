<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="DOAN.giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<div class="main">
	<div class="shoping_bag">
		<h4><img src="images/small.jpg">my shopping shoe / <span><asp:Label ID="soluonggiohang" runat="server" Text="Label"></asp:Label> </span></h4>
		<ul class="s_art">
			
		
		</ul>
		<div class="clearfix"></div>
	</div>

    <asp:Repeater ID="rptgiohang" runat="server" OnItemCommand="rptgiohang_ItemCommand">
                            <ItemTemplate>
                                 <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "chitietsp.aspx?MaSP=" + Eval("MaSP") %>'>
	<div class="shoping_bag1">
		<div class="shoping_left">
			<div class="shoping1_of_1">
				 <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"  alt=""  ImageUrl='<%# "images/nam/mau1/" + Eval("AnhMinhHoa") %>' /> 
			</div>
			<div class="shoping1_of_2">
				<h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label> </h4></asp:HyperLink>
				<span>size <b><asp:Label ID="size" runat="server" Text='<%# Eval("size") %>'></asp:Label></b>&nbsp;&nbsp; SL <b><asp:Label ID="soluong" runat="server" Text='<%# Eval("Soluong") %>'></asp:Label></b> | code :1175</span>
				<ul class="s_icons">
					 <li><asp:LinkButton ID="LinkButton1"  runat="server"  CssClass="btn btn-success"><img src="images/s_icon1.png" alt=""></asp:LinkButton></li>
     
                    <li><asp:LinkButton ID="xoa"  runat="server" CommandName="xoagh"  CommandArgument='<%# Eval("id") %>' CssClass="btn btn-success"><img src="images/s_icon3.png" alt=""></asp:LinkButton> </li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_right">
			<p><span> <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("ThanhTien")+" "+"VND" %>'></asp:Label></span></p>
		</div>
		<div class="clearfix"></div>
	</div>
</ItemTemplate>

    </asp:Repeater>
   


	<div class="shoping_bag2">
		<div class="shoping_left">
            <asp:HyperLink ID="hplSanPham" class="btn1" runat="server" NavigateUrl="thanhtoan.aspx"> place order</asp:HyperLink>
           
			
		</div>
		<div class="shoping_right">
			<p class="tot">total &nbsp;<span class="color"> <asp:Label ID="lblTongTien" runat="server" ></asp:Label></span></p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
</asp:Content>

	
  