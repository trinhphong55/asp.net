<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="DOAN.dangki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <div class="header" style="background-color:#432525">
		<div class="header-main">
		       <h1>Create Account</h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
                         <asp:RequiredFieldValidator  ID="rfvTenaccount" runat="server" ControlToValidate="tendangnhap" ErrorMessage="Vui lòng nhập tên đăng nhâp" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvtentaikhoan" runat="server" ControlToValidate="tentaikhoan" ErrorMessage="Vui lòng nhập họ tên" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvpassword" runat="server" ControlToValidate="password" ErrorMessage="Vui lòng nhập tên đăng nhâp" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvgmail" runat="server" ControlToValidate="gmail" ErrorMessage="Vui lòng nhập gmail" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvsdt" runat="server" ControlToValidate="sodienthoai" ErrorMessage="Vui lòng nhập số điện thoại" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvdt" runat="server" ControlToValidate="sodienthoai" ErrorMessage="SĐT không hợp lệ" ValidationExpression="0\d{9}" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:RequiredFieldValidator  ID="rfvdc" runat="server" ControlToValidate="diachi" ErrorMessage="Vui lòng nhập tên đăng nhâp" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
						 <asp:TextBox ID="tendangnhap" placeholder="Account" name="Account" runat="server"></asp:TextBox>
                        <asp:TextBox ID="tentaikhoan" placeholder="User name" name="name"  runat="server"></asp:TextBox>
		                <asp:TextBox ID="password" TextMode="Password"  placeholder="Password" name="password"  runat="server"></asp:TextBox>
                        <asp:TextBox ID="gmail" placeholder="@Gmail.com"  name="gmail"  runat="server"></asp:TextBox>
                        <asp:TextBox ID="sodienthoai" placeholder="number phone"  name="sdt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="diachi" placeholder="Địa Chỉ"  name="diachi" runat="server"></asp:TextBox>
						<div class="remember">
			             <span class="checkbox1">
							   <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Remember me</label>
						 </span>
						 <div class="forgot">
						 	<h6><a href="#">Forgot Password?</a></h6>
						 </div>
						<div class="clear"> </div>
					  </div>
					   
						       <asp:Button ID="btn_danngki" runat="server" Text="register" OnClick="btn_danngki_Click"/>
				
					<div class="header-left-top">
						<div class="sign-up"> <h2>or</h2> </div>
					
					</div>
					<div class="header-social wthree">
							<a href="#" class="face"><h5>Facebook</h5></a>
							<a href="#" class="twitt"><h5>Twitter</h5></a>
						</div>
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
  
</asp:Content>

