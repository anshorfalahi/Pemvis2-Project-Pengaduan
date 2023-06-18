Imports MySql.Data.MySqlClient

Public Class Bidang
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As MySqlConnection = New MySqlConnection("server=localhost;user=root;pwd=;database=dbkeluhan")
        Dim dt As New DataTable
        Dim mydata As MySqlDataAdapter
        Dim query = "SELECT idbidang AS 'ID Bidang', namabidang as 'Nama Bidang' FROM bidang"

        Try
            conn.Open()
            mydata = New MySqlDataAdapter(query, conn)
            mydata.Fill(dt)
            conn.Close()

            GV.DataSource = dt
            GV.DataBind()
        Catch ex As Exception
            If conn.State = ConnectionState.Open Then
                MsgBox("Koneksi Database Gagal")
                conn.Close()
            End If
        End Try
    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Response.Redirect("WebForm1.aspx")
    End Sub
End Class