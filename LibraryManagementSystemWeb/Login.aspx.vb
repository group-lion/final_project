
Imports System.Data
Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        cmd.Connection = con
        cmd.CommandText = "select Username,Password from login where Username=@username and Password=@pass"
        cmd.Parameters.AddWithValue("@username", TxtName.Text)
        cmd.Parameters.AddWithValue("@pass", TxtPassword.Text)
        con.Open()

        dr = cmd.ExecuteReader
        If dr.Read Then
            Response.Redirect("Home.aspx")
        Else
            lblMessage.Text = "invailed Name or Password !!"
        End If
        con.Close()

    End Sub
End Class