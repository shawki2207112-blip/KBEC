<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-login.aspx.cs" Inherits="KBEC.user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>User Login</title>

    <link rel="stylesheet" href="Content/login.css" />

</head>

<body>

<form id="form1" runat="server">

<section class="login-page">

    <div class="login-container">

        <div class="login-left">

            <img src="Images/logo.jpg"
                 class="login-logo" />

            <h1>User Login</h1>

        </div>

        <div class="login-right">

            <div class="login-form">

                <h2>Login</h2>

                <div class="input-group">

                    <label>Email</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        TextMode="Email" />

                </div>

                <div class="input-group">

                    <label>Password</label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password" />

                </div>

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-btn"
                    OnClick="btnLogin_Click" />

                <br /><br />

                <a href="signup.aspx">
                    Create Account
                </a>

            </div>

        </div>

    </div>

</section>

</form>

</body>

</html>