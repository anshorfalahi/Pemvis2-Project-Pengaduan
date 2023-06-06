<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dosen.aspx.vb" Inherits="tes_db_class.Dosen" %>

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
    <form id="form2" runat="server">
        <div>
            <h1 class="auto-style1">APLIKASI PENGADUAN KELUHAN POLITALA</h1>
            <p class="auto-style1">
                <strong>Laporan Dosen:</strong></p>
            <p>
                <asp:GridView ID="GV" runat="server" HorizontalAlign="Center" CellPadding="5">
                </asp:GridView>
            </p>
            <p class="auto-style1">
                <asp:Button ID="btnBack" runat="server" Text="Back" />
            </p>
        </div>
    </form>
</body>
</html>
