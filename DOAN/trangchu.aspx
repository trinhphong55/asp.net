<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="DOAN.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- script-for-nav -->
					<script>
					    $("span.menu").click(function () {
					        $(".head-nav ul").slideToggle(300, function () {
					            // Animation complete.
					        });
					    });
					</script>
				<!-- script-for-nav -->
	<div class="banner">
		<div class="container">
		<div class="col-md-6">
		</div>
		<div class="col-md-6 banner-info">
			<h1>Big Title Here</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed malesuada sapien. Nulla aliquam orci nec massa hendrerit tincidunt. Donec in sollicitudin lacus. Curabitur et faucibus nulla. Maecenas sit amet semper libero, in iaculis felis. Aliquam erat volutpat. Donec sollicitudin turpis eget tortor tincidunt euismod.</p>
			<a class="show-more" href="#">SHOW ME MORE</a>
		</div>
			<div class="clearfix"> </div>
		</div>
	</div>


    <div class="instock">
		<div class="container">
			<div class="col-md-6 chuk">
				
					<div class="blanc-info">
						<h3>2014 Chuck Taylor ALL STARS</h3>
						<h4>NOW IN STOCK!FREE SHIPPINGSTARTING AT $24.99</h4>
						<a class="show" href="#">SHOW ME MORE</a>
					</div>
			</div>
			<div class="col-md-6 blanc">
				
					<div class="blanc-info">
						<h3>2014 Le Blanc Dress Shoes</h3>
						<h4>NOW IN STOCK!FREE SHIPPINGSTARTING AT $24.99</h4>
						<a class="show" href="#">SHOW ME MORE</a>
					</div>
			</div>
			<div class="clearfix"> </div>
		</div>	
	</div>
<!-- instock -->
<div class="featured">
<div class="container">
<div class="col-md-9">
<div class="biseller-info">



            <h3 class="new-models">featured products</h3>
			            <ul id="flexiselDemo3">
				             
                                     <asp:Repeater ID="rptSanPham" runat="server">
                            <ItemTemplate>
                                  <li>
					            <div class="biseller-column">
					  
                              <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"   ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
					                   <a href="#"><i class="new"></i></a>
					                    <div class="biseller-name">
						                    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						                      <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+" "+"VND" %>'></asp:Label>
                                            </div>     
					            </div>
				            </li>
                            </ItemTemplate>
                        </asp:Repeater>
	     	            </ul>
		            </div>	

			<script type="text/javascript">
			    $(window).load(function () {
			        $("#flexiselDemo3").flexisel({
			            visibleItems: 3,
			            animationSpeed: 1000,
			            autoPlay: false,
			            autoPlaySpeed: 3000,
			            pauseOnHover: true,
			            enableResponsiveBreakpoints: true,
			            responsiveBreakpoints: {
			                portrait: {
			                    changePoint: 480,
			                    visibleItems: 1
			                },
			                landscape: {
			                    changePoint: 640,
			                    visibleItems: 2
			                },
			                tablet: {
			                    changePoint: 768,
			                    visibleItems: 3
			                }
			            }
			        });

			    });
			   </script>
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
			
				<div class="best-seller">
				
					<div class="biseller-info">
					 <h3 class="new-models">latest products</h3>
					<ul id="flexiselDemo1">
			
                          <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                  <li>
					            <div class="biseller-column">
					  
                              <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"   ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
					                   <a href="#"><i class="new"></i></a>
					                    <div class="biseller-name">
						                    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						                     <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+" "+"VND" %>'></asp:Label>
                                            </div>     
					            </div>
				            </li>
                            </ItemTemplate>
                        </asp:Repeater>




			     	</ul>
					</div>
		
			</div>
			<script type="text/javascript">
			    $(window).load(function () {
			        $("#flexiselDemo1").flexisel({
			            visibleItems: 3,
			            animationSpeed: 1000,
			            autoPlay: true,
			            autoPlaySpeed: 3000,
			            pauseOnHover: true,
			            enableResponsiveBreakpoints: true,
			            responsiveBreakpoints: {
			                portrait: {
			                    changePoint: 480,
			                    visibleItems: 1
			                },
			                landscape: {
			                    changePoint: 640,
			                    visibleItems: 2
			                },
			                tablet: {
			                    changePoint: 768,
			                    visibleItems: 3
			                }
			            }
			        });

			    });
			   </script>
			   <script type="text/javascript">
			       $(window).load(function () {
			           $("#flexiselDemo5").flexisel({
			               visibleItems: 3,
			               animationSpeed: 1000,
			               autoPlay: true,
			               autoPlaySpeed: 3000,
			               pauseOnHover: true,
			               enableResponsiveBreakpoints: true,
			               responsiveBreakpoints: {
			                   portrait: {
			                       changePoint: 480,
			                       visibleItems: 1
			                   },
			                   landscape: {
			                       changePoint: 640,
			                       visibleItems: 2
			                   },
			                   tablet: {
			                       changePoint: 768,
			                       visibleItems: 3
			                   }
			               }
			           });

			       });
			   </script>
			   <div class="best-seller">
				
					<div class="biseller-info">
					
					<ul id="flexiselDemo5">
					
                          <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                  <li>
					            <div class="biseller-column">
					  
                              <asp:Image ID="imgAnhMinhHoa" runat="server" class="img-responsive"   ImageUrl='<%# "images/" + Eval("AnhMinhHoa") %>' />
					                   <a href="#"><i class="new"></i></a>
					                    <div class="biseller-name">
						                    <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
						                     <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien")+" "+"VND" %>'></asp:Label>
                                            </div>     
					            </div>
				            </li>
                            </ItemTemplate>
                        </asp:Repeater>
						
						
			     	</ul>
					</div>
		
			</div>
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>

			<div class="clearfix"></div>
			</div>
			<div class="col-md-3 span_1_of_right">
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

						</div>
		       </section>
		       

	  </div>
				<div class="clearfix"></div>	
	</div>		
</div>		
</asp:Content>
