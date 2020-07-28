Imports System.Data
Imports System.Data.SqlClient
Public Class Issue_books
    Inherits System.Web.UI.Page
    Dim Con As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim dt = New DataTable()
    Dim da = New SqlDataAdapter(cmd)
    ''second
    Dim cmd1 As New SqlCommand
    Dim dt1 = New DataTable()
    Dim da1 = New SqlDataAdapter(cmd)
    '' three
    Dim cmd2 As New SqlCommand
    Dim dt2 = New DataTable()
    Dim da2 = New SqlDataAdapter(cmd2)
    '' four
    Dim cmd3 As New SqlCommand
    Dim dt3 = New DataTable()
    Dim da3 = New SqlDataAdapter(cmd)
    ''five
    Dim cmd4 As New SqlCommand
    Dim dt4 = New DataTable()
    Dim da4 = New SqlDataAdapter(cmd)
    '' six
    Dim cmd0 As New SqlCommand
    Dim dt0 = New DataTable()
    Dim da0 = New SqlDataAdapter(cmd)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack) Then
            Return
        End If
        enrno.Items.Clear()
        enrno.Items.Add("select")
        cmd.Connection = Con
        Con.Open()
        cmd.CommandText = "select Enrolment_no from Student_registration"
        cmd.ExecuteNonQuery()
        da.Fill(dt)

        For Each dr As DataRow In dt.Rows
            enrno.Items.Add(dr("Enrolment_no").ToString())
        Next
        Con.Close()

        ''second colums
        isb.Items.Clear()
        isb.Items.Add("select")
        cmd1.Connection = Con
        Con.Open()
        cmd1.CommandText = "select book_isbn from books"
        cmd1.ExecuteNonQuery()
        Dim da1 = New SqlDataAdapter(cmd1)
        da1.Fill(dt1)
        For Each dr1 As DataRow In dt1.Rows
            isb.Items.Add(dr1("book_isbn").ToString())
        Next
        Con.Close()

    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        If (isb.SelectedItem.ToString = "select") Then
            Response.Write("<script>alert('please select book ');window.location.href=window.location.href;</script>")
        Else

            Dim found As Integer = 0
            cmd0.Connection = Con
            Con.Open()
            cmd0.CommandText = "select * from Issue_books where student_enrollment_no ='" + enrno.SelectedItem.ToString() + "' and book_isbn ='" + isb.SelectedItem.ToString + "' and books_return ='no' "
            cmd0.ExecuteNonQuery()
            Dim da0 = New SqlDataAdapter(cmd0)
            da0.Fill(dt0)
            found = Convert.ToInt32(dt0.Rows.Count.ToString())
            If found > 0 Then
                Response.Write("<script>alert('this book is already available with this student ');</script>")
            Else
                Con.Close()

                If instock.Text = 0 Then

                    Response.Write("<script>alert('this book is not Available instock ');</script>")
                Else
                    Dim book_issue_date As String = DateTime.Now.ToString("yyyy/mm/dd")
                    Dim books_approx_return_date As String = DateTime.Now.AddDays(10).ToString("yyyy/mm/dd")
                    Dim username As String = ""
                    cmd2.Connection = Con
                    Con.Open()
                    cmd2.CommandText = "select *from Student_registration where Enrolment_no='" + enrno.SelectedItem.ToString() + "'"
                    cmd2.ExecuteNonQuery()
                    Dim da2 = New SqlDataAdapter(cmd2)
                    da2.Fill(dt2)
                    For Each dr2 As DataRow In dt2.Rows
                        username = dr2("Username").ToString()
                    Next
                    Con.Close()
                    ''insert Issue_books
                    cmd3.Connection = Con
                    Con.Open()
                    cmd3.CommandText = "insert into Issue_books values('" + enrno.SelectedItem.ToString + "','" + isb.SelectedItem.ToString + "','" + book_issue_date.ToString + "','" + books_approx_return_date.ToString + "','" + username.ToString + "','no','no')"
                    cmd3.ExecuteNonQuery()
                    Con.Close()
                    ''update Issue_books
                    cmd3.Connection = Con
                    Con.Open()
                    cmd3.CommandText = "update  books set Available_qty=Available_qty-1 where book_isbn='" + isb.SelectedItem.ToString + "'"
                    cmd3.ExecuteNonQuery()
                    Response.Write("<script>alert('books issues sucessfully');</script>")
                    li.ImageUrl = ""
                    booksname.Text = ""
                    instock.Text = ""

                End If
            End If
        End If
    End Sub

    Protected Sub isb_SelectedIndexChanged(sender As Object, e As EventArgs) Handles isb.SelectedIndexChanged
        li.ImageUrl = ""
        booksname.Text = ""
        instock.Text = ""
        cmd1.Connection = Con
        Con.Open()
        cmd1.CommandText = "select *from books where book_isbn='" + isb.SelectedItem.ToString() + "'"
        cmd1.ExecuteNonQuery()
        Dim da1 = New SqlDataAdapter(cmd1)
        da1.Fill(dt1)
        For Each dr1 As DataRow In dt1.Rows
            li.ImageUrl = dr1("book_image").ToString()
            booksname.Text = dr1("book_title").ToString()
            instock.Text = dr1("Available_qty").ToString()

        Next
        Con.Close()
    End Sub
End Class