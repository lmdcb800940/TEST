<%@ Page Title="" Language="C#" MasterPageFile="~/T_ASPNET/MasterPage_001.master" AutoEventWireup="true" CodeFile="Default004_MasterPage_01.aspx.cs" Inherits="T_ASPNET_Default004_MasterPage_01" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
    <br />
</asp:Content>

