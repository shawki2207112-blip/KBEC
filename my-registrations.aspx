<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="my-registrations.aspx.cs"
    Inherits="KBEC.my_registrations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>My Registrations</title>

    <link rel="stylesheet" href="Content/kbec.css" />

    <style>

        body{
            background:#0b0f14;
            color:white;
            font-family:Arial;
        }

        .container{
            width:90%;
            max-width:1200px;
            margin:120px auto;
        }

        h1{
            color:#f5c518;
            margin-bottom:30px;
        }

        .grid{
            width:100%;
            border-collapse:collapse;
            background:#111;
        }

        .grid th{
            background:#f5c518;
            color:black;
            padding:14px;
        }

        .grid td{
            padding:12px;
            border-bottom:1px solid #333;
        }

        .event-img{
            width:120px;
            border-radius:10px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="container">

    <h1>My Registered Events</h1>

    <asp:GridView
        ID="gvRegistrations"
        runat="server"
        AutoGenerateColumns="False"
        CssClass="grid">

        <Columns>

            <asp:BoundField
                DataField="Title"
                HeaderText="Event" />

            <asp:BoundField
                DataField="Location"
                HeaderText="Location" />

            <asp:ImageField
                DataImageUrlField="ImagePath"
                DataImageUrlFormatString="Images/{0}"
                HeaderText="Image">

                <ControlStyle
                    CssClass="event-img" />

            </asp:ImageField>

        </Columns>

    </asp:GridView>

</div>

</form>

</body>
</html>