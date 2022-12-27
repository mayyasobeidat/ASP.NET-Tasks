<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_27December.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<%--    LOGIN--%>
    <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login</h2>
                <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a email" ControlToValidate="TextBox1" ValidationGroup="Login" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary" aria-describedby="emailHelp"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox2" ValidationGroup="Login" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>


                    </div>
                    <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login" ForeColor="Red" />
                    </div>
                    <div class="d-grid">
                     <asp:Button ID="Button2" CssClass="btn btn-primary" type="submit" runat="server" ValidationGroup="Login" Text="Login" />
                    </div>
                <div class="mt-3">
                    <p class="mb-0 text-center">Don't have an account? <a href="Signup.aspx" class="text-primary fw-bold">SignUp</a></p>
                </div>
            </div>
        </div>


      


</asp:Content>
