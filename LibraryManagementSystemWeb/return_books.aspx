<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="return_books.aspx.vb" Inherits="LibraryManagementSystemWeb.return_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-logo">                    
  <h1 style="color:indigo">Return Books Form</h1>
  </div>
    <div class="form-group">

        <div class="form-group">
<label>Student_Enrolment_no</label>
<asp:TextBox ID="txtEnrolment_no" runat="server" class="form-control" placeholder=""></asp:TextBox>
 </div>
<label>Book_id</label>
<asp:TextBox ID="txtBook_id" runat="server" class="form-control" placeholder=""></asp:TextBox>
</div>
<div class="form-group">
<label>Student_name</label>
<asp:TextBox ID="txtstudent_name" runat="server" class="form-control" ></asp:TextBox>
</div>
<div>
<asp:Button ID="btnGo" runat="server" class="btn btn-lg btn-info btn-block" Text="Go" />
</div>
<div class="form-group">
<label>Book_name</label>
<asp:TextBox ID="txtBook_name" runat="server" class="form-control" placeholder=""></asp:TextBox>
</div>

<div>
<asp:Button ID="btnReturn" runat="server" class="btn btn-lg btn-info btn-block" Text="Return Books" />
</div>
</asp:Content>
