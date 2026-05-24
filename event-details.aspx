<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="event-details.aspx.cs" Inherits="KBEC.event_details" %>

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

.details img{
    width:100%;
    border-radius:12px;
    margin-bottom:20px;
    opacity:0;
    animation: fadeInUp 1s ease forwards, floatImage 4s ease-in-out infinite;
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    will-change: transform;
}

@keyframes fadeInUp{
    from{
        opacity:0;
        transform: translateY(30px);
    }
    to{
        opacity:1;
        transform: translateY(0);
    }
}

@keyframes floatImage{
    0%,100%{
        transform: translateY(0);
    }
    50%{
        transform: translateY(-12px);
    }
}

.details img:hover{
    transform: scale(1.04);
    box-shadow: 0 0 25px rgba(245,197,24,0.35);
}

.details h1{
    margin-bottom:20px;
}

.details p{
    color:#aaa;
    line-height:1.7;
    white-space: pre-line;
}

/* LOCATION */
.event-location{
    margin: 10px 0 20px;
    color: #f5c518;
    font-weight: 500;
}

/* BUTTONS */
.event-links{
    display:flex;
    gap:16px;
    flex-wrap:wrap;
    margin-top:25px;
}

.register-btn{
    padding:14px 32px;
    background:#f5c518;
    color:#000;
    border-radius:999px;
    text-decoration:none;
    font-weight:600;
    font-size:15px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    transition: all 0.25s ease;
    box-shadow: 0 4px 12px rgba(245,197,24,0.25);
}

.register-btn:hover{
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(245,197,24,0.4);
}

.facebook-btn{
    background:#f5c518;
}
</style>
</head>

<body>

<form id="form1" runat="server">

<section class="details">

    <img id="eventImage" />

    <h1 id="eventTitle"></h1>

    <div class="event-location">
        📍 <span id="eventLocation"></span>
    </div>

    <p id="eventDesc"></p>

    <div class="event-links">

        <a id="registerBtn"
           class="register-btn">
            Register Now
        </a>

        <a id="facebookBtn"
           class="register-btn facebook-btn"
           hidden>
            Facebook Page
        </a>

    </div>

</section>

</form>

<script src="Scripts/event-details.js"></script>

</body>
</html>