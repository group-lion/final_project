<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Edit_Books.aspx.vb" Inherits="LibraryManagementSystemWeb.Edit_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-lg-8">
     <div class="card">
      <div class="card-header">
     <strong class="card-title">Update Books</strong>
      </div>
             <div class="card-body">
    <!-- Credit Card -->
             <div id="pay-invoice">
              <div class="card-body">
                                  
                    <hr>
                  <div class="form-group">
                  <label for="" class="control-label mb-1">Book ID</label>
              <asp:TextBox ID="txtid" runat="server" class="form-control"></asp:TextBox>
                     </div>
            <div class="form-group">
           <label for="" class="control-label mb-1">Book Title</label>
           <asp:TextBox ID="txtbooktitle" runat="server" class="form-control"></asp:TextBox>
                  </div>
                  
          <div class="form-group">
        <label for="" class="control-label mb-1">Book Author Name</label>
           <asp:TextBox ID="txtAuthor" runat="server" class="form-control"></asp:TextBox>
                   </div> 
         <div class="form-group">
      <label for="" class="control-label mb-1">Book Isbn</label>
           <asp:TextBox ID="txtIsbn" runat="server" class="form-control"></asp:TextBox>
                     </div>
<div class="form-group">
<label for="" class="control-label mb-1">Available Qty</label>
<asp:TextBox ID="txtQty" runat="server" class="form-control"></asp:TextBox>
</div> 
<asp:Button ID="btn" runat="server" class="btn btn-lg btn-info btn-block" Text="Update Books" />
<br />
<asp:Button ID="Button1" runat="server" class="btn btn-lg btn-info btn-block" Text="Search" />  
 <div>
 <asp:TextBox ID="txtSearch" runat="server" class="form-control"></asp:TextBox> 
 </div>
  <div>
 <asp:Button ID="Button2" runat="server"  class="btn btn-lg btn-info btn-block" Text="Delete" />
                                        
 </div>  
 </div>
                         
</div>
                 
 <div>
<div class="alert alert-success" id="update" runat="server" style="display:none">
 <strong></strong> Your Book Updated Successfull!!</div>
 </div>
 </div>

</div>
</div> <!-- .card -->

                    

       </div><!--/.col-->
    </form>
       </div>
       </div>
                </div>
          </div>

                                    
</asp:Content>
