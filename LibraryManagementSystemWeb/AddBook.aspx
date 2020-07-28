<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="AddBook.aspx.vb" Inherits="LibraryManagementSystemWeb.AddBook1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Books</strong>
                        </div>
                        <div class="card-body"/>
                          <!-- Credit Card -->
                          <div id="pay-invoice"/>
                              <div class="card-body"/>

                                         <hr>

        <div class="form-group">
      
        <label for="" class="control-label mb-1">Book Id</label>
    <asp:TextBox ID="txtid" runat="server" class="form-control"></asp:TextBox>
                     </div>

                 <div class="form-group">
      
        <label for="" class="control-label mb-1">Book Title</label>
    <asp:TextBox ID="txtbooktitle" runat="server" class="form-control"></asp:TextBox>
                     </div>
           <div class="form-group">
       <label for="" class="control-label mb-1">Book Image</label>
      <asp:FileUpload ID="FU" runat="server" class="form-control" />
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

                   <div>
     <asp:Button ID="btn" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Books" />
               </div>
             <div class="alert alert-success" id="msg" runat="server" style="display:none">
             <strong></strong> Your Book Added Successfull!!</div>
                   </form>
               </div>
               </div>

               </div>
           </div> <!-- .card -->

          </div><!--/.col-->
</asp:Content>
