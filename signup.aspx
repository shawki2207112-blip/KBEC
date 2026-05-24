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
                    <input type="text" required />
                </div>

                <div class="input-group">
                    <label>Roll</label>
                    <input type="text" required />
                </div>

                <div class="input-group">
                    <label>Department</label>
                    <input type="text" required />
                </div>

                <div class="input-group">
                    <label>Email</label>
                    <input type="email" required />
                </div>

                <div class="input-group">
                    <label>Password</label>
                    <input type="password" required />
                </div>

                <button type="submit"
                        class="login-btn">

                    Create Account

                </button>

            </div>

        </div>

    </div>

</section>

</form>

</body>
</html>