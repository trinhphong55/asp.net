<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="thanhtoan.aspx.cs" Inherits="DOAN.thanhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 
    <link rel="stylesheet" type="text/css" href="css/checkout/stlcheck.css"/>
    
    <!-- -->
    <section id="shop-page" class="shop-page section" style="background-color:white">          
        <div class="container">
            <div class="row">
                <div class="checkout">
                    <!-- YOUR ORDER -->
                    <div class="col-md-3">
                        <div class="your-order">
                            <h4 class="xmd text-capitalize">Your order</h4>
                                
                            <ul class="list-product"> 
                                <asp:Repeater ID="rpt_thanhtoan" runat="server">
                                    <ItemTemplate>
                                  <li>
                                    <div class="product-image">
                                        <asp:Image ID="img_giohang" style="width:50px;height:50px" runat="server" ImageUrl='<%# "images/nam/mau1/" + Eval("AnhMinhHoa") %>' />
                                    </div>
                                    <div class="product-name">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "chitietsp.aspx?MaSP=" + Eval("MaSP") %>'>
                                        <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>(<asp:Label ID="lblsize" runat="server" Text='<%# Eval("size") %>'></asp:Label>)
                                        </asp:HyperLink>
                                    </div>
                                    <div class="qty-wrap">
                                        <span class="product-quantity">
                                            <span class="quantity">
                                                sl:<asp:Label ID="lbl_soluong" runat="server" Text='<%# Eval("soluong") %>'></asp:Label></span>
                                        </span>
                                        blance:<span class="amount"><asp:Label ID="lbl_gia" runat="server" Text='<%# string.Format("{0:n0}", Eval("giatien")) + " VND" %>'></asp:Label></span>
                                    </div>
                                    <div class="product-remove">
                                        <a href="#"><i class="icon awe_close"></i></a>
                                    </div>
                                </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            </ul>
                                    
                            <ul class="list-price">
                                <li class="total">
                                    Total
                                    <span class="amount pull-right"><asp:Label ID="lbl_tongtien" runat="server" ></asp:Label></span>
                                </li>
                            </ul>
                             
                        </div>
                    </div>
                    <!-- END / YOUR ORDER -->


                    <!-- CHECKOUT CONTENT --> 
                       
                    <div class="col-md-9">   
                        <div class="checkout-content">
                            <h4 class="xmd text-capitalize">Your Info</h4>
                            <asp:RequiredFieldValidator  ID="rfv_diachi" runat="server" ControlToValidate="txt_diachi" ErrorMessage="Địa chỉ Không Được Để Trống" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                             <asp:RequiredFieldValidator  ID="rfvdt" runat="server" ControlToValidate="txt_sdt" ErrorMessage="SĐT không hợp lệ" ValidationExpression="0\d{9}" style="color:red"></asp:RequiredFieldValidator><br />
                             <asp:RequiredFieldValidator  ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="email Không Được Để Trống" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                              <asp:RequiredFieldValidator  ID="rfv_ten" runat="server" ControlToValidate="txt_name" ErrorMessage="Tên người Dùng Không Được Để Trống" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="billing_email">
                                       name <abbr class="required">*</abbr>
                                    </label>
                                    <asp:TextBox ID="txt_name" runat="server" text=""></asp:TextBox>
                                </div>
                                 
                                <div class="col-md-6">
                                    <label for="billing_company">
                                        address
                                    </label>
                                      <asp:TextBox ID="txt_diachi" runat="server" text=""></asp:TextBox>
                                </div>
                            </div>  
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="billing_email">
                                        Email Address <abbr class="required">*</abbr>
                                    </label>
                                      <asp:TextBox ID="txt_email" runat="server" text=""></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label for="billing_phone">
                                        Phone <abbr class="required">*</abbr>
                                    </label>
                                      <asp:TextBox ID="txt_sdt" runat="server" text=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="awe-btn awe-btn-3 awe-btn-default text-uppercase"><asp:Button ID="btn_thanhtoan" runat="server" text="oder" OnClick="btn_thanhtoan_Click" /></div>                    
                        </div>
                    </div>
                           
                    <!-- END / CHECKOUT CONTENT -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
