<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl2.ascx.cs" Inherits="_2January.WebUserControl2" %>

<style>
    .divv{
        width:20%;
     
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



    .auto-style1 {
        width: 70%;
    }



</style>


<div class="divv">
<h3>Result</h3>
    <table class="auto-style1">
        <tr>
            <td>
    <asp:Label ID="Label1" runat="server" Text="Excellent"></asp:Label>
            </td>
            <td>
    <div class="md">
    <asp:Label ID="exp" runat="server" Text="" Width="" Height="20px" CssClass="sd"></asp:Label>
    </div>
            </td>
        </tr>
        <tr>
            <td>

    <asp:Label ID="Label2" runat="server" Text="Verygood"></asp:Label>
            </td>
            <td>
    <div class="md">
    <asp:Label ID="vgp" runat="server" Text="" Width="" Height="20px" CssClass="sd2"></asp:Label></div>
            </td>
        </tr>
        <tr>
            <td>

    <asp:Label ID="Label3" runat="server" Text="Good"></asp:Label>
            </td>
            <td>
     <div class="md">
    <asp:Label ID="gp" runat="server" Text="" Width=""   Height="20px" CssClass="sd3"></asp:Label></div>
            </td>
        </tr>
        <tr>
            <td>

      <asp:Label ID="Label5" runat="server" Text="Weak"></asp:Label>
            </td>
            <td>
     <div class="md">
    <asp:Label ID="mmm" runat="server" Text="" Width=""   Height="20px" CssClass="sd4"></asp:Label></div>
            </td>
        </tr>
        <tr>
            <td>

    <asp:Label ID="Label4" runat="server" Text="Poor"></asp:Label>
            </td>
            <td>
          <div class="md">
    <asp:Label ID="ppp" runat="server" Text="" Width=""  Height="20px" CssClass="sd5"></asp:Label></div>
            </td>
        </tr>
    </table>
   
</div>