<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="test.ascx.cs" Inherits="_2January.task1" %>

<div>
            <h3>How satisfied are you with the online valuation services?</h3>
            <asp:RadioButtonList ID="answerRadioButtonList" runat="server" RepeatDirection="Vertical">
                <asp:ListItem Text="Excellent" Value="10">Excellent</asp:ListItem>
                <asp:ListItem Text="VeryGood" Value="20">VeryGood</asp:ListItem>
                <asp:ListItem Text="Good" Value="15">Good</asp:ListItem>
                <asp:ListItem Text="Weak" Value="10">Weak</asp:ListItem>
                <asp:ListItem Text="Poor" Value="10">Poor</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="submitButton" runat="server" Text="voit" OnClick="SubmitButton_Click" />
            <br />
            <asp:Label ID="resultLabel" runat="server" />

    </div>

<div ID="box" runat="server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>