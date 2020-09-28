<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="timkiem.aspx.cs" Inherits="DOAN.timkiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
<div class="women_main">
<div class="col-md-3 span_1_of_right1">
				
			  <section  class="sky-form">
				   <div class="product_right">
     			<h3 class="m_2">Categories</h3>
     			    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">Men's</option>	
						<option value="1">Tempor</option>
						<option value="2">Congue</option>
						<option value="3">Mazim </option>
						<option value="4">Mutationem</option>
						<option value="5">Hendrerit </option>
		           </select>
				   <label class="me"></label>
				   <select class="dropdown" tabindex="50" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Women's</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="wom"></label>
				   <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Kids</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="kid"></label>
			       <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Sports</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="spo"></label>
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
    <asp:Label ID="thongbao" runat="server" Text="Label" Visible="false"></asp:Label>
		<!-- grids_of_4 -->
		<div class="row">
            <asp:Repeater ID="spnam" runat="server">
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
