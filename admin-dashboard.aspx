<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="admin-dashboard.aspx.cs"
    Inherits="KBEC.admin_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>KBEC Admin Dashboard</title>

    <link rel="stylesheet" href="Content/admin-dashboard.css" />

</head>

<body>

<form id="form1" runat="server">

    <!-- SIDEBAR -->
    <aside class="sidebar">

        <div class="sidebar-top">

            <img src="Images/logo.jpg" class="logo" />

            <h2>KBEC Admin</h2>

        </div>

        <nav class="sidebar-menu">

            <a href="admin-dashboard.aspx">Dashboard</a>
            <a href="add-event.aspx">Add Event</a>
            <a href="manage-events.aspx" class="dash-btn">Manage Events</a>
            <a href="#">Registrations</a>
            <a href="events.aspx">
                View Events
            </a>
            <a href="#">Users</a>

        </nav>

    </aside>


    <!-- MAIN -->
    <main class="main-content">

        <!-- TOPBAR -->
        <div class="topbar">

            <h1>
                Admin Dashboard
            </h1>

            <asp:Button
                ID="btnLogout"
                runat="server"
                Text="Logout"
                CssClass="logout-btn"
                OnClick="btnLogout_Click" />

        </div>


        <!-- CARDS -->
        <div class="cards">

            <div class="card">

                <h2>Total Events</h2>

                <asp:Label
                    ID="lblTotalEvents"
                    runat="server"
                    Text="0">
                </asp:Label>

            </div>

            <div class="card">

                <h2>Total Users</h2>

                <asp:Label
                    ID="lblTotalUsers"
                    runat="server"
                    Text="0">
                </asp:Label>

            </div>

            <div class="card">

                <h2>Total Registrations</h2>

                <asp:Label
                    ID="lblTotalRegistrations"
                    runat="server"
                    Text="0">
                </asp:Label>

            </div>

        </div>


        <!-- QUICK ACTIONS -->
        <section class="quick-actions">

            <h2>Quick Actions</h2>

            <div class="actions-grid">

                <a href="add-event.aspx" class="action-card">
                    Add New Event
                </a>

                <a href="manage-events.aspx" class="action-card">
                    Manage Events
                </a>

                <a href="registrations.aspx" class="action-card">
                    View Registrations
                </a>

            </div>

        </section>

    </main>

</form>

</body>
</html>