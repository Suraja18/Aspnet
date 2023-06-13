<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleProject.aspx.cs" Inherits="AspProject.SampleProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>Sample Project</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- This Label is title of Page -->
            <asp:Label ID="Title" runat="server" Text="Simple Calculator"></asp:Label><br />
            <!-- This code include input field with their respective labels -->
            <asp:Label ID="firstnum" runat="server" Text="First Number : "></asp:Label>
            <asp:TextBox type="number" ID="firstnumber" runat="server"></asp:TextBox><br />
            <asp:Label ID="secondnum" runat="server" Text="Second Number : "></asp:Label>
            <asp:TextBox type="number" ID="secondnumber" runat="server"></asp:TextBox><br />
            <div CssClass="container">
                <div CssClass=" d-flex flex-row justify-content-around col-sm-10">
                    <asp:Button CssClass="btn btn-success my-2 " runat="server" Text="Add" OnClick="add_num" />
                    <asp:Button CssClass="btn btn-success my-2" runat="server" Text="Subtract" OnClick="subtract_num" />
                    <asp:Button CssClass="btn btn-success my-2 " runat="server" Text="Multiply" OnClick="multiply_num" />
                    <asp:Button CssClass="btn btn-success my-2 " runat="server" Text="Division" OnClick="divide_num" />
                </div>
                
            </div>
            
            <asp:Label ID="abc" runat="server" Text="The result is : "></asp:Label>
            <asp:TextBox ID="result" runat="server" ReadOnly></asp:TextBox>
        </div>
    </form>
</body>
</html>
