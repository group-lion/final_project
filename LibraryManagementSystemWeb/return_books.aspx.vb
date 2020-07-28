Imports System.Data
Imports System.Data.SqlClient
Public Class return_books
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnGo_Click(sender As Object, e As EventArgs) Handles btnGo.Click
        getid()
        cmd.Connection = cn
        cmd.CommandText = "Select Username from Student_registration where Enrolment_no= @Enrolment_no "
        cmd.Parameters.AddWithValue("@Enrolment_no", txtEnrolment_no.Text)
        cn.Open()
        dr = cmd.ExecuteReader


        If dr.Read Then
            txtstudent_name.Text = dr.GetValue(0)
        End If

        cn.Close()

        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()

        Catch ex As Exception

            Response.Write(ex.Message)
        End Try
    End Sub

    Sub clear()
        txtBook_id.Text = ""
        txtBook_name.Text = ""
        txtEnrolment_no.Text = ""
        txtstudent_name.Text = ""
    End Sub

    Sub getid()
        cmd.Connection = cn
        cmd.CommandText = "Select book_title from books where id = @id "
        cmd.Parameters.AddWithValue("id", txtBook_id.Text)
        cn.Open()
        dr = cmd.ExecuteReader
        If dr.Read Then
            txtBook_name.Text = dr.GetValue(0)
        End If

        cn.Close()
    End Sub

    Protected Sub btnReturn_Click(sender As Object, e As EventArgs) Handles btnReturn.Click
        cmd.Connection = cn
        cmd.CommandText = "delete from Issue_books where ID =@ID"
        cmd.Parameters.AddWithValue("@ID", txtBook_id.Text)
        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()

            Response.Write("<script>alert('You Have Returned Successfuly');</script>")

        Catch ex As Exception

        End Try
        cmd.Connection = cn
        cmd.CommandText = "update books set Available_qty = Available_qty+1 where id = @id"
        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()

            Response.Write("<script>alert('Success');</script>")

            clear()

        Catch ex As Exception

            Response.Write(ex.Message)
        End Try
    End Sub
End Class