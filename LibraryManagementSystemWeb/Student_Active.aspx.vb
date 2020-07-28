Imports System.Data
Imports System.Data.SqlClient
Public Class Student_Active
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim Id As Integer
        Id = Convert.ToInt32(Request.QueryString(CStr("id")).ToString())
        con.ConnectionString = "Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True"
        cmd.Connection = con
        con.Open()
        cmd.CommandText = "Update Student_registration set Status='yes' where id='" & Id & "'"
        cmd.ExecuteNonQuery()
        Response.Redirect("Student_Disply_info.aspx")
    End Sub

End Class