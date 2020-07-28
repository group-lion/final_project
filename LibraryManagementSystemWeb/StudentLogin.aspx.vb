Public Class StudentLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnSigin.Click
        'Dim con As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
        'Dim cmd As New SqlCommand
        'Dim dr As SqlDataReader
        'cmd.Connection = con
        'cmd.CommandText = "select Username,Password from Student_registration where Username=@user and Password=@pass"
        'cmd.Parameters.AddWithValue("@user", txtusername.Text)
        'cmd.Parameters.AddWithValue("@pass", txtpassword.Text)
        'con.Open()

        'dr = cmd.ExecuteReader
        'If dr.Read Then
        '    Response.Redirect("Student_Display_all_Book.aspx")
        'Else
        '    [Error].Style.Add("display", "block")
        'End If
        'con.Close()
        If TextBoxName.Text = "Lion" And TextBoxPassword.Text = "2233" Then '
            Response.Redirect("Student_Registration.aspx")
        Else
            LblMessage.Text = "Invailed Name Or Password !! "
        End If

    End Sub
End Class