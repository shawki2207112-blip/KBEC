<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="KBEC.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Admin Login</title>

    <link rel="stylesheet" href="Content/login.css" />

</head>

<body>

<form id="form1" runat="server">

<section class="login-page">

    <div class="login-container">

        <div class="login-left">

            <img src="Images/logo.jpg"
                 class="login-logo" />

            <h1>Admin Login</h1>

        </div>

        <div class="login-right">

            <div class="login-form">

                <h2>Admin Login</h2>

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

                <br />
                <br />

                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    ForeColor="Red"
                    CssClass="error-message"></asp:Label>
                <br />
                <br />

                <a href="kbec.aspx"
                    style="color: #f5c518; text-decoration: none; font-weight: bold; font-size: 14px;">← Back To Home
                </a>

            </div>

        </div>

    </div>

</section>

</form>

</body>

</html>