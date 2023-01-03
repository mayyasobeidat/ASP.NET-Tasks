<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_3January.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

            <form id="form2" runat="server">  
        <div>  
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Admin" GroupName="Register" />  
            <asp:RadioButton ID="RadioButton2" runat="server" Text="User" GroupName="Register" />  
        </div>  
        <p>  
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="width: 61px" />  
        </p>  
    </form>  
    <asp:Label runat="server" id="result"></asp:Label>  

</body>
</html>
