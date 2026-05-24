<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="KBEC.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>KBEC Login</title>

    <link rel="stylesheet" href="Content/login.css" />

</head>

<body>

<form id="form1" runat="server">

<section class="login-page">

    <div class="login-container">

        <div class="login-left">

            <img src="Images/logo.jpg"
                 class="login-logo" />

            <h1>Welcome Back</h1>

        </div>

        <div class="login-right">

            <div class="login-tabs">

                <button class="tab-btn active"
                        id="userTab"
                        type="button">

                    User Login

                </button>

                <button class="tab-btn"
                        id="adminTab"
                        type="button">

                    Admin Login

                </button>

            </div>

            <div class="login-form">

                <h2 id="loginTitle">
                    User Login
                </h2>

                <div class="input-group">

                    <label>Email</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="input-box"
                        TextMode="Email">
                    </asp:TextBox>

                </div>

                <div class="input-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="input-box"
                        TextMode="Password">
                    </asp:TextBox>

                </div>

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-btn"
                    OnClick="btnLogin_Click" />

                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    ForeColor="Red">
                </asp:Label>

                <div class="signup-link" id="signupLink">

                    Don't have an account?

                    <a href="signup.aspx">
                        Create Account
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>

</form>

<script src="Scripts/login.js"></script>

</body>
</html>