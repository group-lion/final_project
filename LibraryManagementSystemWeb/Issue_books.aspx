<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Issue_books.aspx.vb" Inherits="LibraryManagementSystemWeb.Issue_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-8">
<div class="card">
<div class="card-header">
<strong class="card-title">Books Issue </strong>
</div>
<div class="card-body">
<!-- Credit Card -->
<div id="pay-invoice">
<div class="card-body">
    <div class="form-group">
<label for="" class="control-label mb-1">Select Enrollment No</label>
<asp:DropDownList ID="enrno" runat="server" class="form-control"></asp:DropDownList>
</div>
<div class="form-group">
<label for="" class="control-label mb-1">Book isbn</label>
<asp:DropDownList ID="isb" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
</div>
<div class="form-group">
<asp:Image ID="li" runat="server" height="150" width="150"/><br/>
<asp:Label ID="booksname" runat="server"></asp:Label><br/>
<asp:Label ID="instock" runat="server"></asp:Label><br/>
</div>
<div>
<asp:Button ID="btn" runat="server" class="btn btn-lg btn-info btn-block" Text="Issue Books" />
</div>

 </div>
 </div>

</div>
</div> <!-- .card -->
</div><!--/.col-->    
</asp:Content>
