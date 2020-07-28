Imports System.Data
Imports System.Data.SqlClient
Public Class AddBook1
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim path As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        FU.SaveAs(Request.PhysicalApplicationPath + "books_image/" & FU.FileName.ToString())
        path = "books_image/" & FU.FileName.ToString()
        cmd.Connection = con
        cmd.CommandText = "insert into books values('" + txtid.Text + "','" + txtbooktitle.Text + "','" + path.ToString + "','" + txtAuthor.Text + "','" + txtIsbn.Text + "','" + txtQty.Text + "')"

        con.Open()
            cmd.ExecuteNonQuery()
            [msg].Style.Add("display", "block")
            clearall()
            con.Close()
            Response.Redirect("Display_All_Books.aspx")

    End Sub
    Sub clearall()
        txtbooktitle.Text = ""
        txtAuthor.Text = ""
        txtIsbn.Text = ""
        txtQty.Text = ""

    End Sub
End Class