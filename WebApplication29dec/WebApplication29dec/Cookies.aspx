<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="WebApplication29dec.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>username </span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <span>password </span><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:CheckBox ID="CheckBox1" runat="server" /> <span>Remember me</span>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
