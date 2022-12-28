<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_28December.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="Scripts/sweetalert.min.js"></script>
        <link href="Styles/sweetalert.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.min.js"></script>
        <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
    <body>
        <form id="form1" runat="server" style="margin: 10%;">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


            <div class="container">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Name</label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Name" ></asp:TextBox>
                        
                    </div>
                    
                    
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Comment</label>
                        <asp:TextBox ID="TextBox1" runat="server"  rows="3" TextMode="MultiLine" class="form-control" ></asp:TextBox>


                    </div>
                    
                    <div class="mb-3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  CssClass="btn btn-primary" type="submit" Text="Save" />
                        </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                
                </ContentTemplate>
            </asp:UpdatePanel>
      

                <script type="text/javascript">
                    function successalert() {
                        swal({
                            title: 'Successfully Insert!',
                            text: 'Your message has been succesfully sent',
                            type: 'success'
                        });
                    }
                </script>
        </div>
    </form>
</body>
</html>
