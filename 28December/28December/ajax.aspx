<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="_28December.ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

<p>AJAX is a technique for send and receive data from server without reloading the page.<br />
    AJAX stands for Asynchronous JavaScript And XML.<br />
    You can update a part of webpage using AJAX.<br />
    It is not a programming language.<br />
    The main purpose of using AJAX is to avoid page reload and do multiple work on a same page.</p>


        <div>
            
            <br />
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    Enter 1st Number&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Enter 2nd Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                    <br />
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            Please wait ..
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <%--<asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>--%>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
           <%-- <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>mayyas</asp:ListItem>
                        <asp:ListItem>qais</asp:ListItem>
                        <asp:ListItem>lujain</asp:ListItem>
                        <asp:ListItem>momen</asp:ListItem>
                        <asp:ListItem>nouran</asp:ListItem>
                        <asp:ListItem>roaa</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>--%>
            <br />
        </div>
    </form>
</body>
</html>
