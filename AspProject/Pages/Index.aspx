<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Header.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AspProject.Pages.Index" %>

<%@ Register Src="~/Pages/Dynamic.ascx" TagPrefix="PC" TagName="Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Web Form" />

    <PC:Card runat="server"
        Title="Samsung"
        Description="Samsung"
        Image="https://th.bing.com/th/id/OIP.TNrtobSyG9cA5Z_NIc23kgHaEK?w=305&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"></PC:Card>

    <PC:Card runat="server"
        Title="Apple"
        Description="Apple"
        Image="https://th.bing.com/th/id/OIP.-l5nN2AY4GvY_7BrMSmnFwHaGG?w=242&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7"></PC:Card>
</asp:Content>
