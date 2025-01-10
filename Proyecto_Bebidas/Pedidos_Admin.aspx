<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos_Admin.aspx.cs" Inherits="Proyecto_Bebidas.Pedidos_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #container-1{
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        #container-2{

        }
    </style>
    <div id="container-1">
        <div class="btn-group" role="group" aria-label="Basic example" id="nav2">
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="PEDIDOS" />
            <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="PRODUCTOS" />
            <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="USUARIOS" />
        </div>
        <div class="btn-group" role="group" aria-label="Basic example" id="nav3">
            <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="PENDIENTES" />
            <asp:Button ID="Button6" class="btn btn-primary" runat="server" Text="CANCELADOS" />
            <asp:Button ID="Button7" class="btn btn-primary" runat="server" Text="FINALIZADOS" />
        </div>
    </div>
    <div id="container-2">
        <label>Desde</label>
        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=".." style="display:inline">
        <label>Hasta</label>
        <input type="text" class="form-control" id="exampleFormControlInput2" placeholder=".."  style="display:inline">
        <asp:Button ID="Button1" runat="server" Text="BUSCAR" />
    </div>
    <div id="container-3">
        <table class="table table-dark">
            <tr>
                <th>Usuario</th>
                <th>Fecha</th>
                <th>Cantidad</th>
                <th>Total</th>
                <th>Tomar pedido</th>
            </tr>
        </table>
    </div>
    <div id="container-3">
        <table class="table table-dark">
            <tr>
                <th> Usuario</th>
                <th> Fecha</th>
                <th> Cantidad</th>
                <th> Total</th>
                <th> Observaciones </th>
                <th> Ver + </th>
            </tr>
        </table>
    </div>
</asp:Content>
