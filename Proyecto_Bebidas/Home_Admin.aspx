<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home_Admin.aspx.cs" Inherits="Proyecto_Bebidas.Home_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #fondo{
            background-color: darkgray;
            display:flex;
            flex-direction:column;
            align-items:center;
        }
    </style>
    
    <div id="fondo">
        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="PEDIDOS" />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="PRODUCTOS" />
        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="USUARIOS" />
    </div>
</asp:Content>
