<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recupero_Mail.aspx.cs" Inherits="Proyecto_Bebidas.Recupero_Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
        <link rel="stylesheet" href="style/Iniciosesion.css" />
    </div>
    <div id="container" class="center-block">
        <main>
            <h4>SOLICITAR EMAIL RELACIONADO</h4>
            <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="INGRESAR DNI DEL TITULAR.."></asp:TextBox>
            <asp:Button ID="btnconfirmar" runat="server" CssClass="custom-textBox" Text="SOLICITAR EMAIL RELACIONADO" />
        </main>
    </div>
</asp:Content>
