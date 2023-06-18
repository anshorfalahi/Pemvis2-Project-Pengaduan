Imports MySql.Data.MySqlClient

Public Class Dosen
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As MySqlConnection = New MySqlConnection("server=localhost;user=root;pwd=;database=dbkeluhan")
        Dim dt As New DataTable
        Dim mydata As MySqlDataAdapter
        Dim query = "SELECT idlaporan as 'ID Laporan', nama AS 'Nama Pelapor',namaprodi as 'Nama Prodi', nohp AS 'No HP Pelapor', namabidang AS 'Bidang', Tanggal, laporan FROM laporan_keluhan INNER JOIN bidang ON laporan_keluhan.idbidang = bidang.idbidang INNER JOIN akun ON laporan_keluhan.idakun_pelapor = akun.idakun INNER JOIN dosen ON akun.idakun = dosen.idakun INNER JOIN prodi ON dosen.idprodi = prodi.idprodi;"

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