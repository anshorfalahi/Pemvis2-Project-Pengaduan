Imports MySql.Data.MySqlClient

Public Class AkunDosen
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As MySqlConnection = New MySqlConnection("server=localhost;user=root;pwd=;database=dbkeluhan")
        Dim dt As New DataTable
        Dim mydata As MySqlDataAdapter
        Dim query = "SELECT 
                        dosen.iddosen AS 'ID Dosen',
                        dosen.idakun as 'ID Akun', 
                        dosen.nama as Nama, 
                        dosen.jeniskelamin AS 'Jenis Kelamin', 
                        dosen.alamat as Alamat, 
                        dosen.nohp as 'NO HP',  
                        dosen.foto as 'Foto',
                        dosen.email as 'Email',
                        prodi.namaprodi as 'Nama Prodi'
                    FROM 
                        dosen 
                        INNER JOIN prodi ON dosen.idprodi = prodi.idprodi"
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
        Response.Redirect("Akun.aspx")
    End Sub
End Class