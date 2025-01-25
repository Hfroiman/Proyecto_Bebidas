<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recupero_Mail.aspx.cs" Inherits="Proyecto_Bebidas.Recupero_Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
        <link rel="stylesheet" href="style/Iniciosesion.css" />
    </div>
    <div id="container" class="center-block">
        <main>
            <h4>SOLICITAR EMAIL RELACIONADO</h4>
            <asp:TextBox ID="txtdni" class="form-control" runat="server" placeholder="INGRESAR DNI DEL TITULAR.." type="number"></asp:TextBox>
            <asp:Button ID="btnconfirmar" runat="server" CssClass="custom-textBox" Text="SOLICITAR EMAIL RELACIONADO" OnClick="Confirmardni" />
            <!--INFORMAR QUE SE ENVIO EMAIL.- INFORMANDO QUE EL MAIL ES EL UTILIZADO PARA AL APP -->
            <br />
            <asp:Label id="lblMensaje1" CssClass="text-decoration-underline" runat="server" Visible="false" Text="!!SE ENVIO EL EMAIL CORRECTAMENTE"></asp:Label>
            <asp:Label id="lblMensaje2" CssClass="text-decoration-underline" runat="server" Visible="false" Text="CORROBORA TU CASILLA¡¡"></asp:Label>
        </main>
    </div>
</asp:Content>
