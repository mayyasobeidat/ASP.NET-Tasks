<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="_2January.WebUserControl1" %>


<style>
    .divv{
        width:30%;
     
        border:2px solid black;
    }
    .md{
        width:150px;
        display:inline-block;
    }
    .sd{
        background-color:forestgreen;
    }
     .sd2{
        background-color:yellowgreen;
    }
      .sd3{
        background-color:yellow;
    }
       .sd4{
        background-color:orange;
    }
        .sd5{
        background-color:red;
    }

        h3{
                border-bottom: solid;
    padding-bottom: 10px;
        }



</style>




<div class="divv">

            <h3>Please rate our page</h3>
            <asp:RadioButtonList ID="answerRadioButtonList" runat="server" RepeatDirection="Vertical" OnSelectedIndexChanged="answerRadioButtonList_SelectedIndexChanged">
                <asp:ListItem Text="Excellent" Value="1">Excellent</asp:ListItem>
                <asp:ListItem Text="VeryGood" Value="2">VeryGood</asp:ListItem>
                <asp:ListItem Text="Good" Value="3">Good</asp:ListItem>
                <asp:ListItem Text="Weak" Value="4">Weak</asp:ListItem>
                <asp:ListItem Text="Poor" Value="5">Poor</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="submitButton" runat="server" Text="voit" OnClick="SubmitButton_Click" Width="93px" />
    </div>