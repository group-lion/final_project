Imports System.Data
Imports System.Data.SqlClient
Public Class Student_Registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        cmd.CommandText = "insert into Student_registration values('" + txtlfull.Text + "','" + txtusername.Text + "','" + txtpass.Text + "','" + txtEnrolment_no.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','no')"
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('You Account is Created!!');</script>")
        Response.Redirect("Home.aspx")


        txtlfull.Text = ""
        txtusername.Text = ""
        txtpass.Text = ""
        txtEnrolment_no.Text = ""
        txtEmail.Text = ""
        txtContact.Text = ""
    End Sub
End Class