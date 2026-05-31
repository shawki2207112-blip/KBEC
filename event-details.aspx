<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="event-details.aspx.cs"
Inherits="KBEC.event_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Event Details</title>

    <link rel="stylesheet" href="Content/kbec.css" />

    <style>

        .details{
            padding-top:120px;
            max-width:900px;
            margin:auto;
        }

            .details img {
                width: 100%;
                border-radius: 12px;
                margin-bottom: 20px;
                opacity: 0;
                animation: fadeInUp 1s ease forwards, floatImage 4s ease-in-out infinite;
                transition: transform 0.4s ease, box-shadow 0.4s ease;
                will-change: transform;
            }

        @keyframes fadeInUp {

            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes floatImage {

            0%,100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-12px);
            }
        }

        .details img:hover {
            transform: scale(1.04);
            box-shadow: 0 0 25px rgba(245,197,24,0.35);
        }
        .details img {
            display: block;
        }


        .details p{
            color:#aaa;
            line-height:1.8;
        }

        .event-location{
            margin:15px 0;
            color:#f5c518;
        }

        .event-links{
            display:flex;
            gap:15px;
            margin-top:25px;
        }

        .register-btn{
            padding:14px 28px;
            background:#f5c518;
            color:black;
            border-radius:999px;
            text-decoration:none;
            font-weight:bold;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<section class="details">

    <!-- EVENT IMAGE -->

    <asp:Image
        ID="imgEvent"
        runat="server" />

    <!-- TITLE -->

    <h1>

        <asp:Label
            ID="lblTitle"
            runat="server" />

    </h1>

    <!-- LOCATION -->

    <div class="event-location">

        📍

        <asp:Label
            ID="lblLocation"
            runat="server" />

    </div>

    <!-- DESCRIPTION -->

    <p>

        <asp:Label
            ID="lblDescription"
            runat="server" />

    </p>

    <!-- BUTTONS -->

    <div class="event-links">

        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register Now"
            CssClass="register-btn"
            OnClick="btnRegister_Click" />

        <asp:HyperLink
            ID="btnFacebook"
            runat="server"
            CssClass="register-btn"
            Text="Facebook Page"
            Target="_blank" />

    </div>
    <br /><br />
    <a href="kbec.aspx"
       style="
       color:#f5c518;
       text-decoration:none;
       font-weight:bold;
       font-size:14px;">
       ← Back To Home
    </a>

</section>

</form>

</body>

</html>