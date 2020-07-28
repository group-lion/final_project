<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Student_Registration.aspx.vb" Inherits="LibraryManagementSystemWeb.Student_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-logo">                    
  <h1 style="color:indigo">Registration Form</h1>
  </div>
    <div class="form-group">

        <div class="form-group">
<label>FullName</label>
<asp:TextBox ID="txtlfull" runat="server" class="form-control" placeholder="last name"></asp:TextBox>
 </div>
<label>Username</label>
<asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="User name"></asp:TextBox>
</div>
<div class="form-group">
<label>Password</label>
<asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="password" TextMode="Password"></asp:TextBox>
</div>
<div class="form-group">
<label>Enrolment_no</label>
<asp:TextBox ID="txtEnrolment_no" runat="server" class="form-control" placeholder="Enrolment_no"></asp:TextBox>
</div>
<div class="form-group">
<label>Email</label>
<asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
</div>
<div class="form-group">
<label>Contact</label>
<asp:TextBox ID="txtContact" runat="server" class="form-control" placeholder="Contact"></asp:TextBox>
</div>
<div class="checkbox">
<label>
<input type="checkbox"> Agree the terms and policy
</label>
 </div>
  <div>
 <asp:Button ID="btn" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register Now" />
 </div>

<div class="register-link m-t-15 text-center">
<p>Already have account ? <a href="StudentLogin.aspx"> Sign in</a></p>
</div>
</div>
</div>
</div>
</div>

</asp:Content>
