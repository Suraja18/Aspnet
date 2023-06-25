<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WriteNewXML.aspx.cs" Inherits="AspProject.WriteNewXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="CreateXml" runat="server" Text="Create a new Xml Document" OnClick="CreateXml_Click" />
        </div>
        <div>
            <label>Product</label>
        </div>
        <div>
            <label>ID:</label>
            <asp:TextBox ID="RegNum" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Product Name:</label>
            <asp:TextBox ID="PName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Product Price:</label>
            <asp:TextBox ID="PPrice" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />
    </form>
</body>
</html>
