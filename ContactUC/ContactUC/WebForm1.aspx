<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ContactUC.WebForm1" %>

<%@ Register Src="~/MyLogin.ascx" TagPrefix="uc1" TagName="MyLogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <uc1:MyLogin runat="server" id="MyLogin" />
        </div>
    </form>
</body>
</html>
