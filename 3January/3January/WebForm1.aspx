<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_3January.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
      <asp:ListItem Value="1">Red</asp:ListItem>
      <asp:ListItem Value="2">Green</asp:ListItem>
      <asp:ListItem Value="3">Blue</asp:ListItem>
      <asp:ListItem Value="4">Yellow</asp:ListItem>
      <asp:ListItem Value="5">Orange</asp:ListItem>
</asp:RadioButtonList><br />
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="RepeatDirection" OnClick="Button2_Click" /><br />

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" AutoPostBack="true" Text="male" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:CheckBox ID="CheckBox2" Text="female" runat="server" />
            <asp:Button ID="Button3" runat="server" Text="Button" />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
