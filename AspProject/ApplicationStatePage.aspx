<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationStatePage.aspx.cs" Inherits="AspProject.ApplicationStatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>View State</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
            <asp:Button ID="restore" runat="server" Text="Restore" OnClick="restore_Click" />
        </div>
        <div>
            <label>Query String</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="submitQuery" runat="server" Text="Submit" OnClick="submitQuery_Click" />
        </div>
        <div>
            <asp:Label runat="server">Login Page Session</asp:Label>
            <div>
                <label>UserName</label>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Password</label>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
        </div>
    </form>
</body>
</html>
