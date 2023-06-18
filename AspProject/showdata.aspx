<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Showdata.aspx.cs" Inherits="AspProject.showdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Data</title>
</head>
<body>
    <% 
        Response.Write("Requested Method = ");
        Response.Write(Request.ServerVariables["Request_Method"]);
        Response.Write("<br />");
        if (Request.ServerVariables["Request_Method"].Equals("GET"))
        {
            Response.Write("Request.QueryString[\"txtData\"] = ");
            Response.Write(Request.QueryString["txtData"]);
        }
        if (Request.ServerVariables["Request_Method"].Equals("POST"))
        {
            Response.Write("Request.Form[\"txtData\"] = ");
            Response.Write(Request.Form["txtData"]);
        }
     %>
</body>
</html>
