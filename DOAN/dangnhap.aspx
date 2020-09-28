<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="DOAN.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <div class="header" style="background-color:#432525">
		<div class="header-main">
		       <h1> Login </h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
                          <asp:RequiredFieldValidator  ID="rfvTenTK" runat="server" ControlToValidate="name" ErrorMessage="Vui lòng nhập tên đăng nhâp" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
               <asp:RequiredFieldValidator  ID="rfvmatkhau" runat="server" ControlToValidate="pass" ErrorMessage="Vui lòng nhập mật khẩu" Display="Dynamic" style="color:red"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="name" RequiredFieldValidation="true" placeholder="User name" name="name" runat="server"></asp:TextBox><br />
                        <asp:TextBox ID="pass" placeholder="Password" name="password" TextMode="Password"  runat="server"></asp:TextBox><br />
						<div class="remember">
			             <span class="checkbox1">
							   <label class="checkbox"><input type="checkbox" name="" checked=""/><i> </i>Remember me</label>
						 </span>
						 <div class="forgot">
						 	<h6><a href="#">Forgot Password?</a></h6>
						 </div>
						<div class="clear"> </div>
					  </div>
                        <asp:Button ID="btn_dangnhap" runat="server" Text="Login" OnClick="btn_dangnhap_Click1"   />
				
			
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
