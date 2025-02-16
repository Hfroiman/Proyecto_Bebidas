﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="Proyecto_Bebidas.InicioSesion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div runat="server">
        <link rel="stylesheet" href="style/Iniciosesion.css" />
    </div>

    <!-- Agregar modal, inicio de sesion exitoso, o por que no ingresa -->
    <div id="container">
        <main id="main-container">
            <h4>INICIAR SESION</h4>
            <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="EMAIL.."></asp:TextBox>
            <asp:TextBox ID="txtcontraseña" class="form-control" runat="server" placeholder="CONSTRASEÑA.."></asp:TextBox>
            <asp:Button ID="btningresar" class="custom-textBox" runat="server" Text="Ingresar" OnClick="btningresar_Click" />

            <div>
                <asp:Label id="alert" class="alert alert-primary" runat="server" role="alert" Visible="false" Text=""></asp:Label>
            </div>

            <a href="Cambio_contraseña.aspx" style="text-decoration: none; color: black" class="fs-4">No recuerdo la contraseña</a>
            <a href="Recupero_Mail.aspx" style="text-decoration: none; color: black" class="fs-5">No recuerdo mi mail</a>
        </main>
    </div>
</asp:Content>
