<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyLogin.ascx.cs" Inherits="ContactUC.MyLogin" %>

        <script src="Scripts/sweetalert.min.js"></script>
        <link href="Styles/sweetalert.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.min.js"></script>
        <link href="Content/bootstrap.css" rel="stylesheet" />


<style type="text/css">



* {
  box-sizing: border-box;
}

  .container {
    max-width: 1320px;
  }
  .container {
    max-width: 1140px;
  }
  .container {
    max-width: 960px;
  }
  .container {
    max-width: 720px;
  }
  .container {
    max-width: 540px;
  }

.container {
  --bs-gutter-x: 1.5rem;
  --bs-gutter-y: 0;
  width: 100%;
  padding-right: calc(var(--bs-gutter-x) * 0.5);
  padding-left: calc(var(--bs-gutter-x) * 0.5);
  margin-right: auto;
  margin-left: auto;
}

</style>
<div style="margin: 10%;">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="mb-3">
                    <label class="form-label" for="exampleFormControlInput1">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="exampleFormControlTextarea1">
                    Comment</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Save" type="submit" />
                </div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
      

        </div>
</div>

