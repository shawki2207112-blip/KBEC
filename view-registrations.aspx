<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="view-registrations.aspx.cs"
Inherits="KBEC.view_registrations" %>

<!DOCTYPE html>

<html>
<head runat="server">

<title>View Registrations</title>

<style>

body{
    background:#0b0f14;
    color:white;
    font-family:Arial;
}

.container{
    width:95%;
    margin:50px auto;
}

.grid{
    width:100%;
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

<div class="container">

<h1>Event Registrations</h1>

<asp:GridView
ID="gvRegistrations"
runat="server"
AutoGenerateColumns="true"
CssClass="grid" />

</div>

</form>

</body>
</html>