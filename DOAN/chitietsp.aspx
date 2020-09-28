<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="DOAN.chitietsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>Runners sport  A Ecommerce Category Flat a Bootstarp  Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/menu_jquery.js"></script>
<link rel="stylesheet" href="css/etalage.css"/>
<script src="js/jquery.easydropdown.js"></script>
 <!-- etale -->
				  <script src="js/jquery.etalage.min.js"></script>
<script>
    jQuery(document).ready(function ($) {

        $('#etalage').etalage({
            thumb_image_width: 300,
            thumb_image_height: 400,
            source_image_width: 800,
            source_image_height: 1000,
            show_hint: true,
            click_callback: function (image_anchor, instance_id) {
                alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
            }
        });

    });
		</script>
   	<div class="details">
<div class="container">
<div class="row single">
<div class="col-md-9">
				  <div class="single_left">
				 
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									  <asp:Image ID="imgAnhMinhHoa"  class="etalage_source_image" runat="server" Width="250px" BorderStyle="Double" BorderWidth="5px" /><br />
									<img class="etalage_source_image" src="images/d1.jpg" class="img-responsive" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								  <asp:Image ID="imgAnhMinhHoa1"  class="etalage_source_image" runat="server" Width="250px" BorderStyle="Double" BorderWidth="5px" /><br />
								<img class="etalage_source_image" src="images/d2.jpg" class="img-responsive" title="" />
							</li>
							<li>
								 <asp:Image ID="imgAnhMinhHoa2"  class="etalage_source_image" runat="server" Width="250px" BorderStyle="Double" BorderWidth="5px" /><br />
								<img class="etalage_source_image" src="images/d3.jpg"class="img-responsive"  />
							</li>
						    <li>
								 <asp:Image ID="imgAnhMinhHoa3"  class="etalage_source_image" runat="server" Width="250px" BorderStyle="Double" BorderWidth="5px" /><br />
								<img class="etalage_source_image" src="images/d4.jpg"class="img-responsive"  />
							</li>
						</ul>
						 <div class="clearfix"></div>		
				  </div>
				  <div class="desc1 span_3_of_2">
					
                      <h3><asp:Label ID="tensanpham" runat="server"></asp:Label></h3>
					<p><asp:Label ID="giasp" runat="server"></asp:Label> <a href="#">click for offer</a></p>
                      Số Lượng còn:<asp:Label ID="soluong" runat="server"></asp:Label>
					<div class="det_nav">
						<h4>related styles :</h4>
						<ul>
							<li><a href="#"><asp:Image ID="imgAnh1" CssClass="img-responsive" runat="server" /></a></li>
								<li><a href="#"><asp:Image ID="imgAnh2" CssClass="img-responsive" runat="server" /></a></li>
								<li><a href="#"><asp:Image ID="imgAnh3" CssClass="img-responsive" runat="server" /></a></li>
								<li><a href="#"><asp:Image ID="imgAnh4" CssClass="img-responsive" runat="server" /></a></li>
						</ul>
					</div>
					<div class="det_nav1">
						<h4>Select a size :</h4>
							<div class=" sky-form col col-4">
								<ul>
                                   
									
									<li>  <asp:RadioButton ID="RadioButton1" runat="server" GroupName="size" Checked="true" /><i> </i>38</li>
									<li> <asp:RadioButton ID="RadioButton2" runat="server" GroupName="size" /><i> </i>39</li>
                                    <li> <asp:RadioButton ID="RadioButton3" runat="server" GroupName="size" /><i> </i>40</li>
                                    <li> <asp:RadioButton ID="RadioButton4" runat="server" GroupName="size" /><i> </i>41</li>
									
								</ul>
							</div>
					</div>
					<div class="btn_form">
						<asp:Button ID="btn_giohang" runat="server" Text="Buy"  CommandArgument='<%# Eval("MaSP") %>'   style="width:100px;background-color:green" OnClick="btn_giohang_Click" />
					</div>
					<a href="#"><span>login to save in wishlist </span></a>
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
          	    <div class="single-bottom1">
					<h6>Details</h6>
					<p class="prod-desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option</p>
				</div>
				<div class="single-bottom2">
					<h6>Related Products</h6>
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/12.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
					  <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/9.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
				     <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/8.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
		   	  </div>
	       </div>	
    </div>
	       </div>	
           </div>
	       
</asp:Content>
