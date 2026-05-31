<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="events.aspx.cs"
    Inherits="KBEC.events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>KBEC Events</title>

    <link rel="stylesheet"
          href="Content/kbec.css" />

    <style>

        .events-page{
            padding-top:120px;
            text-align:center;
        }

        .events-grid{
            display:flex;
            gap:30px;
            flex-wrap:wrap;
            justify-content:center;
            margin-top:40px;
        }

        .event-item{
            width:280px;
            background:#111;
            border-radius:12px;
            overflow:hidden;
            text-decoration:none;
            color:white;
            transition:0.3s;
        }

        .event-item:hover{
            transform:translateY(-10px);
            box-shadow:0 0 15px #f5c51844;
        }

        .event-item img{
            width:100%;
            height:180px;
            object-fit:cover;
        }

        .event-item h3{
            padding:15px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<section class="events-page">

    <h1>Our Events</h1>

    <div class="events-grid">

        <asp:Repeater ID="rptEvents"
                      runat="server">

            <ItemTemplate>

                <a href='event-details.aspx?key=<%# Eval("EventKey") %>'
                   class="event-item">

                    <img src='Images/<%# Eval("ImagePath") %>' />

                    <h3>
                       <%# Eval("Title") %>
                    </h3>

                </a>

            </ItemTemplate>

        </asp:Repeater>

    </div>

</section>

</form>

</body>
</html>