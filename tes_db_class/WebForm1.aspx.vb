Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnDosen_Click(sender As Object, e As EventArgs) Handles btnDosen.Click
        Response.Redirect("Dosen.aspx")
    End Sub

    Protected Sub btnMahasiswa_Click(sender As Object, e As EventArgs) Handles btnMahasiswa.Click
        Response.Redirect("Mahasiswa.aspx")
    End Sub

    Protected Sub btnStaf_Click(sender As Object, e As EventArgs) Handles btnStaf.Click
        Response.Redirect("Staff_bidang.aspx")
    End Sub

    Protected Sub btnAkun_Click(sender As Object, e As EventArgs) Handles btnAkun.Click
        Response.Redirect("Akun.aspx")
    End Sub

    Protected Sub btnBidang_Click(sender As Object, e As EventArgs) Handles btnBidang.Click
        Response.Redirect("Bidang.aspx")
    End Sub

    Protected Sub btnLevel_Click(sender As Object, e As EventArgs) Handles btnLevel.Click
        Response.Redirect("Level.aspx")
    End Sub

    Protected Sub btnProdi_Click(sender As Object, e As EventArgs) Handles btnProdi.Click
        Response.Redirect("Prodi.aspx")
    End Sub
End Class