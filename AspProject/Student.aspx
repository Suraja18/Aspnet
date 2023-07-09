<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="AspProject.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="StdName" runat="server"></asp:TextBox>
            <asp:Button ID="DynamicGet" runat="server" Text="GET" OnClick="GetBtn_Click" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="RegNo"></asp:Label>
            <asp:TextBox ID="StdReg" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="CreateBtn" runat="server" Text="Create" OnClick="CreateBtn_Click" />
            <asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" />
            <asp:Button ID="DeleteBtn" runat="server" Text="Delete" OnClick="DeleteBtn_Click" />
            <asp:Button ID="SearchBtn" runat="server" Text="Search" OnClick="SearchBtn_Click" />
            <br />
            <asp:GridView ID="DisplayDbData" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
