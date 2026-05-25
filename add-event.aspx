<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="add-event.aspx.cs"
    Inherits="KBEC.add_event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add Event</title>

    <link rel="stylesheet"
          href="Content/admin-dashboard.css" />

    <style>

        body{
            background:#0f172a;
            color:white;
            font-family:Arial;
        }

        .form-container{
            max-width:700px;
            margin:auto;
            margin-top:60px;

            background:#111827;

            padding:40px;

            border-radius:20px;

            box-shadow:0 0 20px rgba(0,0,0,0.4);
        }

        .form-container h1{
            margin-bottom:30px;
            color:#f5c518;
        }

        .input-group{
            margin-bottom:22px;
        }

        .input-group label{
            display:block;
            margin-bottom:8px;
            font-weight:600;
        }

        .input-group input,
        .input-group textarea{
            width:100%;

            padding:14px;

            border:none;

            border-radius:10px;

            background:#1f2937;

            color:white;

            font-size:15px;

            outline:none;
        }

        .input-group textarea{
            resize:none;
        }

        .checkbox-group{
            margin-bottom:25px;
        }

        .submit-btn{
            background:#f5c518;
            color:black;

            border:none;

            padding:14px 28px;

            border-radius:999px;

            font-weight:bold;

            cursor:pointer;

            transition:0.3s;
        }

        .submit-btn:hover{
            transform:translateY(-3px);
        }

        .message{
            margin-top:20px;
            color:#f5c518;
            font-weight:bold;
        }
        .dashboard-btn {
            display: inline-block;
            padding: 12px 24px;
            background: #222;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            transition: 0.3s;
        }

            .dashboard-btn:hover {
                background: #f5c518;
                color: black;
            }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="form-container">

        <h1>Add New Event</h1>

        <!-- EVENT NAME -->
        <div class="input-group">

            <label>Event Name</label>

            <asp:TextBox
                ID="txtEventName"
                runat="server">
            </asp:TextBox>

        </div>


        <!-- EVENT KEY -->
        <div class="input-group">

            <label>Event Key</label>

            <asp:TextBox
                ID="txtEventKey"
                runat="server">
            </asp:TextBox>

        </div>


        <!-- DESCRIPTION -->
        <div class="input-group">

            <label>Description</label>

            <asp:TextBox
                ID="txtDescription"
                runat="server"
                TextMode="MultiLine"
                Rows="6">
            </asp:TextBox>

        </div>


        <!-- LOCATION -->
        <div class="input-group">

            <label>Location</label>

            <asp:TextBox
                ID="txtLocation"
                runat="server">
            </asp:TextBox>

        </div>


        <!-- IMAGE -->
        <div class="input-group">

            <label>Select Event Image</label>

            <asp:FileUpload
                ID="fileEventImage"
                runat="server" />

        </div>


        <!-- FACEBOOK -->
        <div class="input-group">

            <label>Facebook Link</label>

            <asp:TextBox
                ID="txtFacebook"
                runat="server">
            </asp:TextBox>

        </div>


        <!-- FEATURED -->
        <div class="checkbox-group">

            <label>

                <asp:CheckBox
                    ID="chkFeatured"
                    runat="server"
                    Checked="true" />

                Show In What's Next

            </label>

        </div>


        <!-- BUTTON -->
        <asp:Button
            ID="btnAddEvent"
            runat="server"
            Text="Add Event"
            CssClass="submit-btn"
            OnClick="btnAddEvent_Click" />

        <br />


        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>

        
        <br />
        <a href="admin-dashboard.aspx"
            class="dashboard-btn">Back to Dashboard

        </a>
        <br />
        <br />





    </div>

</form>

</body>
</html>