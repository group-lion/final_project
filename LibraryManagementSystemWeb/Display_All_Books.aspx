<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Display_All_Books.aspx.vb" Inherits="LibraryManagementSystemWeb.Display_All_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content mt-3">
     <div class="animated fadeIn">
      <div class="row">
       <div class="col-lg-12">
        <div class="card">
         <div class="card-header">
      <strong class="card-title"> All Books</strong>
       </div>
            <div class="card-body">
                            <asp:Repeater ID="R1" runat="server">
                                <HeaderTemplate>
                                    <table class="table">
                              <thead>
                                <tr>
                                 <th scope="col">Book_id</th>
                                  <th scope="col">Book_title</th>
                                  <th scope="col">Book_image</th>
                                  <th scope="col">Book_AuthorName</th>
                                  <th scope="col">Book_isbn</th>
                                  <th scope="col">Available_qty</th>
                                  <th scope="col">Edit Books</th>
                              </tr>
                              </thead>
                             <tbody>
                                </HeaderTemplate>
                                <ItemTemplate> 
                               <tr>
                                <td><%#Eval("id")%></td>
                                <td><%#Eval("book_title")%></td>
                              <td><img src="<%#Eval("Book_image")%>" height="100" width="100" /></td>                             
                              <td><%#Eval("book_AuthorName")%></td>
                              <td><%#Eval("book_isbn")%></td>
                              <td><%#Eval("Available_qty")%></td>
                              <td><a href="Edit_Books.aspx?id=<%#Eval("Available_qty")%>">Edit book </a></td>
                          </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                     </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                            
                          
                           
                
                     
                        </div>
         </div>
             </div>
              </div>
                </div>
          </div>
</asp:Content>
