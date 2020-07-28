Imports System.Data
Imports System.Data.SqlClient
Public Class Display_All_Books
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-0N63G9O;Initial Catalog=Assigment;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim dt = New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmd.Connection = con
        cmd.CommandText = "select *from books "
        Dim da = New SqlDataAdapter(cmd)
        con.Open()
        da.Fill(dt)
        R1.DataSource = dt
        R1.DataBind()
        con.Close()
    End Sub

End Class