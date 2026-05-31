<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="manage-registrations.aspx.cs"
Inherits="KBEC.manage_registrations" %>

<!DOCTYPE html>

<html>
<head runat="server">

<title>Manage Registrations</title>

<style>

body{
    background:#0b0f14;
    color:white;
    font-family:Arial;
}

.grid{
    width:95%;
    margin:50px auto;
    border-collapse:collapse;
}

.grid th{
    background:#f5c518;
    color:black;
    padding:12px;
}

.grid td{
    padding:10px;
    border-bottom:1px solid #333;
}

</style>

</head>

<body>

<form runat="server">

<asp:GridView
ID="gvEvents"
runat="server"
CssClass="grid"
AutoGenerateColumns="False"
DataKeyNames="EventID"
OnRowCommand="gvEvents_RowCommand">

<Columns>

<asp:BoundField
DataField="Title"
HeaderText="Event"/>

<asp:BoundField
DataField="RegistrationStatus"
HeaderText="Status"/>

<asp:ButtonField
Text="Open"
CommandName="OpenRegistration"/>

<asp:ButtonField
Text="Close"
CommandName="CloseRegistration"/>

</Columns>

</asp:GridView>
    <div style="margin:20px;">
    <a href="admin-dashboard.aspx"
       style="
       color:#f5c518;
       text-decoration:none;
       font-weight:bold;
       font-size:14px;">
       ← Back To Dashboard
    </a>
</div>

</form>

</body>
</html>