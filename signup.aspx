<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="KBEC.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>

    <link rel="stylesheet" href="Content/login.css" />
</head>

<body>

<form id="form1" runat="server">

<section class="login-page">

    <div class="login-container">

        <div class="login-left">

            <img src="Images/logo.jpg"
                 class="login-logo" />

            <h1>Create Account</h1>

        </div>

        <div class="login-right">

            <div class="login-form">

                <h2>Create Account</h2>

                <div class="input-group">

                    <label>Full Name</label>

                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        required="required" />

                </div>

                <div class="input-group">

                    <label>Roll</label>

                    <asp:TextBox
                        ID="txtRoll"
                        runat="server"
                        required="required" />

                </div>

                <div class="input-group">

                    <label>Department</label>

                    <asp:TextBox
                        ID="txtDepartment"
                        runat="server"
                        required="required" />

                </div>

                <div class="input-group">

                    <label>Email</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        TextMode="Email"
                        required="required" />

                </div>

                <div class="input-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password"
                        required="required" />

                </div>

                <asp:Button
                    ID="btnSignup"
                    runat="server"
                    Text="Create Account"
                    CssClass="login-btn"
                    OnClick="btnSignup_Click" />

                <br />
                <br />

                <a href="login.aspx" style="color: white;">
                    Already have account?
                </a>

            </div>

        </div>

    </div>

</section>

</form>

</body>

</html>