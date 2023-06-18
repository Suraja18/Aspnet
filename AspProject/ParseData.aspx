<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParseData.aspx.cs" Inherits="AspProject.ParseData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="showdata.aspx" method="GET" id="form1">
        GET : 
        <input type="text" id="txtGet" name="txtData" />
        <input type="submit" />
    </form>
    <form action="showdata.aspx" method="POST" id="form2">
        POST : 
        <input type="text" id="txtPost" name="txtData" />
        <input type="submit" />
    </form>
</body>
</html>
