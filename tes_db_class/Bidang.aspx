<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bidang.aspx.vb" Inherits="tes_db_class.Bidang" %>

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
                <strong>Data Bidang:</strong></p>
            <p>
                <asp:GridView ID="GV" runat="server" HorizontalAlign="Center" CellPadding="5">
                </asp:GridView>
            </p>
            <p class="auto-style1">
                <asp:Button ID="btnBack" runat="server" Text="Back" style="height: 26px" />
            </p>
        </div>
    </form>
</body>
</html>