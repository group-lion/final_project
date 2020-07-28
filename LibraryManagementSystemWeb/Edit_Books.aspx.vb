
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Public Class Edit_Books
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader
        con.ConnectionString = "Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True"
        con.Open()
        cmd = New SqlCommand("select *from books where id='" + txtSearch.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            txtid.Text = dr.GetValue(0)
            txtbooktitle.Text = dr.GetValue(1)
            txtAuthor.Text = dr.GetValue(3)
            txtIsbn.Text = dr.GetValue(4)
            txtQty.Text = dr.GetValue(5)

        Else
            Response.Write("<script>alert('Record not found');</script>")
        End If
        con.Close()
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        cmd.CommandText = "update books set book_title='" + txtbooktitle.Text + "',book_AuthorName='" + txtAuthor.Text + "',book_isbn='" + txtIsbn.Text + "',Available_qty='" + txtQty.Text + "' where id=" + txtSearch.Text + ""
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Record Succesfull Updated');</script>")
        txtid.Text = ""
        txtbooktitle.Text = ""
        txtAuthor.Text = ""
        txtIsbn.Text = ""
        txtQty.Text = ""
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        cmd.CommandText = " delete from books where id ='" & txtSearch.Text & "' "
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('Record Succesfull delete');</script>")
        txtid.Text = ""
        txtbooktitle.Text = ""
        txtAuthor.Text = ""
        txtIsbn.Text = ""
        txtQty.Text = ""
    End Sub
End Class