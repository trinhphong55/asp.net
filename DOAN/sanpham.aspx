<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="DOAN.sanphamnam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
<div class="women_main">
<div class="col-md-3 span_1_of_right1">
			  <section  class="sky-form">
				   <div class="product_right">
     			<h3 class="m_2">Categories</h3>
     			        <asp:DropDownList ID="loaisp" runat="server" AutoPostBack="true" class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}' OnSelectedIndexChanged="loai_SelectedIndexChanged" >
                                     <asp:ListItem Value="LSP002">men</asp:ListItem>
                                     <asp:ListItem Value="LSP003">women</asp:ListItem>
    </asp:DropDownList>
				   <label class="me"></label>
				   <asp:DropDownList ID="ddl_giasp" runat="server" AutoPostBack="true" class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}' OnSelectedIndexChanged="ddl_giasp_SelectedIndexChanged" >
                        <asp:ListItem Value="1">ascending</asp:ListItem>
                        <asp:ListItem Value="2">descending</asp:ListItem>
			       </asp:DropDownList>
				    
		
</div>
						
				</section>
                   	 
						<div class="sellers">
							<h3 class="m_2">Best sellers</h3>
						 <asp:Repeater ID="sanphambanchay" runat="server">
                            <ItemTemplate>
                               	<div class="best">
									<div class="icon">
					  
                              <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"   ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
					                  </div>
									<div class="data">
										
						                    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						                  <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+" "+"VND" %>'></asp:Label>
                                          <h5>120.000 VND</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
                            </ItemTemplate>
                        </asp:Repeater>
								
						 </div>
					 
               

					
				
		       <section  class="sky-form">
					<div class="sellers">
							<h3 class="m_2">Special Offers</h3>
							<section class="slider">
						<div class="flexslider">
							<ul class="slides">
					


                                 <asp:Repeater ID="uudaidacbiet" runat="server">
                            <ItemTemplate>
                               	<li>
									<div class="tittle">
                              <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"   ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
					             
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
                            </ItemTemplate>
                        </asp:Repeater>
								
							</ul>
						</div>
					</section>
				
				
						<!-- FlexSlider -->
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
							      $(function () {
							          SyntaxHighlighter.all();
							      });
							      $(window).load(function () {
							          $('.flexslider').flexslider({
							              animation: "slide",
							              start: function (slider) {
							                  $('body').removeClass('loading');
							              }
							          });
							      });
							  </script>
				
						<!-- FlexSlider -->
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
							      $(function () {
							          SyntaxHighlighter.all();
							      });
							      $(window).load(function () {
							          $('.flexslider').flexslider({
							              animation: "slide",
							              start: function (slider) {
							                  $('body').removeClass('loading');
							              }
							          });
							      });
							  </script>
						<!-- FlexSlider -->

						</div>
		       </section>
		       

	  </div>
<div class="col-md-9 w_content">
		<div class="women">
			<a href="#"><h4>Enthecwear - <span>4449 itemms</span> </h4></a>
			<ul class="w_nav">
						<li>Sort : </li>
		     			<li><a class="active" href="#">popular</a></li> |
		     			<li><a href="#">new </a></li> |
		     			<li><a href="#">discount</a></li> |
		     			<li><a href="#">price: Low High </a></li> 
		     			<div class="clear"></div>	
		     </ul>
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<div class="row">
            <asp:Repeater ID="rptsanpham" runat="server">
                            <ItemTemplate>
		  <div class="col-md-4" style="height: 400px">	
				<div class="content_box" > <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "chitietsp.aspx?MaSP=" + Eval("MaSP") %>'>
			   	  <div class="view view-fifth">
			   	   	  <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"  alt=""  ImageUrl='<%# "images/nam/mau1/" + Eval("AnhMinhHoa") %>' /> 
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				  
				   </div>
				    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4> </asp:HyperLink>
				     <h5 style="color:black"><span><asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+" "+"VND" %>'></asp:Label></span> </h5>
			   	</div>
			</div>

       </ItemTemplate>
                        </asp:Repeater>   
    
     
                                      



			
			<div class="clearfix"></div>
		</div>
		<!-- end grids_of_4 -->
	</div>
				<div class="clearfix"></div>	
	</div>		
</div>		
</asp:Content>

