<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios_Admin.aspx.cs" Inherits="Proyecto_Bebidas.Usuarios_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
    #container-1{
        
    }
</style>
    <div id="container-1">
        <div class="btn-group" role="group" aria-label="Basic example" id="nav2">
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="PEDIDOS" />
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="PRODUCTOS" />
            <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="USUARIOS" />
        </div>
    </div>

    <div id="container-2">
        <table class="table table-dark">
            <tr>
                <th> Nombre</th>
                <th> Apellido</th>
                <th> DNI</th>
                <th> Usuario</th>
                <th> Estado</th>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </table>
    </div>
</asp:Content>
