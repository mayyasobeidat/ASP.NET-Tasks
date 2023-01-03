<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="task1.ascx.cs" Inherits="_2January.task1" %>

<div>
            <h3>ما هو مدى رضاك عن الخدمات الالكترونية الخاصة بالتخمين؟</h3>
            <asp:RadioButtonList ID="answerRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">ممتاز</asp:ListItem>
                <asp:ListItem Value="2">جيد جدا</asp:ListItem>
                <asp:ListItem Value="3">جيد</asp:ListItem>
                <asp:ListItem Value="4">ضعيف</asp:ListItem>
                <asp:ListItem Value="5">مقبول</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="submitButton" runat="server" Text="تصويت" OnClick="SubmitButton_Click" />
            <br />
            <asp:Label ID="resultLabel" runat="server" />

    </div>