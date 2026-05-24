<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="KBEC.events" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KBEC Events</title>

    <link rel="stylesheet" href="Content/kbec.css" />

    <style>
      .events-page {
        padding-top: 120px;
        text-align: center;
      }

      .events-grid {
        display: flex;
        gap: 30px;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 40px;
      }

      .event-item {
        width: 280px;
        background: #111;
        border-radius: 12px;
        overflow: hidden;
        cursor: pointer;
        transition: 0.3s;
        text-decoration: none;
        color: white;
      }

      .event-item:hover {
        transform: translateY(-10px);
        box-shadow: 0 0 15px #f5c51844;
      }

      .event-item img {
        width: 100%;
        height: 180px;
        object-fit: cover;
      }

      .event-item h3 {
        padding: 15px;
      }
    </style>
</head>

<body>

<form id="form1" runat="server">

<section class="events-page">

    <h1>Our Events</h1>

    <div class="events-grid">

        <a href="event-details.aspx?event=tedx"
           class="event-item">

            <img src="Images/tedx.jpg" />

            <h3>TEDxKUET</h3>

        </a>

        <a href="event-details.aspx?event=nexusSeason2"
           class="event-item">

            <img src="Images/KBEC nexus_2.jpg" />

            <h3>KBEC NEXUS SEASON 2</h3>

        </a>

        <a href="event-details.aspx?event=casecrack"
           class="event-item">

            <img src="Images/casecrack.jpg" />

            <h3>CASE CRACK 3.0</h3>

        </a>

    </div>

</section>

</form>

</body>
</html>