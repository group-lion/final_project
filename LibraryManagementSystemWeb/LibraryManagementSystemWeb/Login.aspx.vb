Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "hafsa" And TextBox2.Text = "1234" Then
            Response.Redirect("Home.aspx")
        Else
            MsgBox("Invalid username or password")
        End If

    End Sub
End Class