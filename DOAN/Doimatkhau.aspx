<%@ Page Title="" Language="C#" MasterPageFile="~/dautrang.Master" AutoEventWireup="true" CodeBehind="Doimatkhau.aspx.cs" Inherits="DOAN.quenmatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        

    <div class="header" style="background-color:#432525">
		<div class="header-main">
		       <h1>Change password </h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
                        <asp:TextBox ID="newpassword" value="new password" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}" runat="server"></asp:TextBox>
                        <asp:TextBox ID="enterthepassword" value=" enter the Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}" runat="server"></asp:TextBox>
						<div class="remember">
			             <span class="checkbox1">
						 </span>
						 <div class="forgot">
						 </div>
						<div class="clear"> </div>
					  </div>
                        <asp:Button ID="btn_doimatkhau" runat="server" Text="Change password" OnClick="btn_doimatkhau_Click"  />
				</div>
				</div>
			  
			</div>
		</div>
</div>
</asp:Content>
