<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_27December.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--    SIGNUP--%>

  <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Signup</h2>
                
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <asp:TextBox ID="TextBox3" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary" aria-describedby="emailHelp"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a email" ControlToValidate="TextBox3" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <asp:TextBox ID="TextBox4" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox4" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div>
                    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
                    <asp:TextBox ID="TextBox5" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox5" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter valid value" ControlToValidate="TextBox5" ControlToCompare="TextBox4" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:CompareValidator>

                     </div>
                    <br/>
                <div>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="Signup" ForeColor="Red" />
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="Button1" CssClass="btn btn-primary" type="submit" runat="server" ValidationGroup="Signup" Text="Signup" OnClick="Button1_Click" />
                    </div>
                
                <div class="mt-3">
                    <p class="mb-0  text-center">Do You have an account? <a href="Login.aspx"
                            class="text-primary fw-bold">Login</a></p>
                </div>
            </div>
        </div>


</asp:Content>
