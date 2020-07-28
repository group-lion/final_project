<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Add_Penalty.aspx.vb" Inherits="LibraryManagementSystemWeb.Add_Penalty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-8">
<div class="card"/>
<div class="card-header">
<strong class="card-title">Add & Edit Penalty</strong>
</div>
<div class="card-body">
<!-- Credit Card -->
 <div id="pay-invoice">
 <div class="card-body">
 <div class="form-group">
<label for="" class="control-label mb-1">Add Edit Penalty($)</label>
 <asp:TextBox ID="txtPenalty" runat="server" class="form-control"></asp:TextBox>
</div>
<div>
<asp:Button ID="btn" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Penalty" />
</div>
<div class="alert alert-success" id="msg" runat="server" style="display:none">
 <strong></strong> Your Book Added Successfull!!</div>
 </form>
 </div>
  </div>
</div>

</div>
    <!-- .card -->
</div><!--/.col-->
</asp:Content>
