<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="tes_db_class.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">APLIKASI PENGADUAN KELUHAN POLITALA</h1>
            <p class="auto-style1">
                Laporan Keluhan:</p>
            <p class="auto-style1">
                <asp:Button ID="btnDosen" runat="server" Text="Dosen" />
                <asp:Button ID="btnMahasiswa" runat="server" Text="Mahasiswa" />
                <asp:Button ID="btnStaf" runat="server" Text="Staf" />
            </p>
        </div>
    </form>
</body>
</html>
