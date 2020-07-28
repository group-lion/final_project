<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manage.Master" CodeBehind="Student_Disply_info.aspx.vb" Inherits="LibraryManagementSystemWeb.Student_Disply_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table class="table table-bordered">
            <tr>
               
                <th>FullName</th>
                <th>Enr No</th>
                <th>Username</th>        
                <th>Email</th>
                <th>Contact</th>
                <th>Status</th>
                <th>Active</th>
                <th>Deactive</th>
                 
            </tr>

            
        </HeaderTemplate>
        <ItemTemplate>
              <tr>
            
            <td><%#Eval("Full_name")%></td>
            <td><%#Eval("Enrolment_no")%></td>
            <td><%#Eval("Username")%></td>
            <td><%#Eval("Email")%></td>
            <td><%#Eval("Contact")%></td>
            <td><%#Eval("Status")%></td>
            <td><a href="Student_Active.aspx?id=<%#Eval("id")%>">Active </a></td>
            <td><a href="Student_Deactive.aspx?id=<%#Eval("id")%>">Deactive </a></td>
            
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
            
</asp:Content>
