<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P1.aspx.cs" Inherits="WebApplication29dec.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <hr />
            <br />
              <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Cookies" OnClick="Button3_Click" />
            <br />
            <asp:Button ID="Button7" runat="server" Text="Show Cookies" OnClick="Button7_Click" />

            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
<br />




            <br /><hr />
            <asp:Button ID="Button6" runat="server" Text="Page" PostBackUrl="~/P2.aspx" />
        </div>
    </form>
</body>
</html>
