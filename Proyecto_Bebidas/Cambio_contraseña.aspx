<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cambio_contraseña.aspx.cs" Inherits="Proyecto_Bebidas.Cambio_contraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
        <link rel="stylesheet" href="style/Iniciosesion.css" />
    </div>
    <div id="container" class="center-block">
        <main>
            <h4>MODIFICAR CONTRASEÑA</h4>

            <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="INGRESAR EMAIL.."></asp:TextBox>
            <asp:Button ID="btnsolicitarclave" class="custom-textBox" runat="server" Text="SOLICITAR NUEVA CLAVE.." />

            <asp:TextBox ID="txtemailenviado" class="form-control" runat="server" placeholder="INGRESAR CLAVE ENVIADA.."></asp:TextBox>

            <asp:TextBox ID="txtnuevoemail" class="form-control" runat="server" placeholder="NUEVA CONTRASEÑA.."></asp:TextBox>
            <asp:TextBox ID="txtnuevoemail2" class="form-control" runat="server" placeholder="REPETIR NUEVA CONTRASEÑA.."></asp:TextBox>

            <asp:Button ID="btnconfirmar" runat="server" CssClass="custom-textBox" Text="CONFIRMAR" />
        </main>
    </div>
</asp:Content>
