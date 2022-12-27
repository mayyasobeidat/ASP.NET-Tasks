<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_27December.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .bigg{
            display:flex;    
            width:100%;
            
        }

        .smalll{
            width:50%;
        }

        .smallltoa{
            width:50%;
        }

        .rounded-5 {
        width: 70% !important;
            height: 570px !important;

}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bigg">
    <div class="smalll">
        
<%--    LOGIN--%>
    <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login</h2>
                
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a email" ControlToValidate="TextBox1" ValidationGroup="Login" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary" aria-describedby="emailHelp"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox2" ValidationGroup="Login" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>


                        </label>
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>


                    </div>
                    <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login" ForeColor="Red" />
                    </div>
<%--                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>--%>
                    <div class="d-grid">
<%--                        <input id="Submit1" type="submit" value="submit" runat="server" ValidationGroup="Login"/> --%>
                     <asp:Button ID="Button2" CssClass="btn btn-primary" type="submit" runat="server" ValidationGroup="Login" Text="Login" />

<%--                        <button class="btn btn-primary" type="submit" runat="server" ValidationGroup="Login">Login</button>--%>
                    </div>
                <div class="mt-3">
                    <p class="mb-0 text-center">Don't have an account? <a href="Signup.aspx" class="text-primary fw-bold">SignUp</a></p>
                </div>
            </div>
        </div>

    </div>

<hr style="border:1px dashed #0d6efd;" />

    <div class="smallltoa">
        
<%--    SIGNUP--%>

        <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Signup</h2>
                
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a email" ControlToValidate="TextBox3" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </label>
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary" aria-describedby="emailHelp"></asp:TextBox>

                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox4" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </label>
                        &nbsp;<asp:TextBox ID="TextBox4" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>

                    </div>
                    <div>
                    <label for="exampleInputPassword1" class="form-label">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a password" ControlToValidate="TextBox5" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter valid value" ControlToValidate="TextBox5" ControlToCompare="TextBox4" ValidationGroup="Signup" Text="*" ForeColor="Red"></asp:CompareValidator>

                        </label>
                    &nbsp;<asp:TextBox ID="TextBox5" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>

                     </div>
                    <br/>
<%--                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>--%>
                <div>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="Signup" ForeColor="Red" />
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="Button1" CssClass="btn btn-primary" type="submit" runat="server" ValidationGroup="Signup" Text="Signup" OnClick="Button1_Click" />
<%--                        <button class="btn btn-primary" type="submit" runat="server" ValidationGroup="Signup" >Signup</button>--%>
                    </div>
                
                <div class="mt-3">
                    <p class="mb-0  text-center">Do You have an account? <a href="Login.aspx"
                            class="text-primary fw-bold">Login</a></p>
                </div>
            </div>
        </div>

</div>
    </div>
</div>

</asp:Content>