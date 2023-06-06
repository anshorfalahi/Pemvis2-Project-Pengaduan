Imports MySql.Data.MySqlClient

Public Class KoneksiDB
    Dim conn As MySqlConnection = New MySqlConnection("server=localhost;user=root;pwd=;database=dbkeluhan")

    Public Sub open()
        conn.Open()
    End Sub

    Public Sub close()
        conn.Close()
    End Sub
End Class
