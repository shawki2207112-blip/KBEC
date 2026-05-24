<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="KBEC.register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Registration</title>

    <link rel="stylesheet" href="Content/register.css" />
</head>

<body>

<form id="form1" runat="server">

<section class="register-page">

    <div class="register-container">

        <div class="register-left">

            <img src="Images/logo.jpg"
                 class="register-logo" />

            <h1>Event Registration</h1>

        </div>

        <div class="register-right">

            <div class="register-form">

                <div class="event-name-box">

                    <span>Registering For</span>

                    <h2 id="eventName">
                        Loading Event...
                    </h2>

                </div>

                <div class="input-group">
                    <label>Full Name</label>
                    <input type="text" required />
                </div>

                <div class="input-group">
                    <label>Roll</label>
                    <input type="text" required />
                </div>

                <div class="input-group">
                    <label>Email</label>
                    <input type="email" required />
                </div>

                <div class="input-group">
                    <label>Department</label>
                    <input type="text" required />
                </div>

                <button type="submit"
                        class="submit-btn">

                    Complete Registration

                </button>

            </div>

        </div>

    </div>

</section>

</form>

<script src="Scripts/register.js"></script>

</body>
</html>