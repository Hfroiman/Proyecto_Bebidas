<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cambio_contraseña.aspx.cs" Inherits="Proyecto_Bebidas.Cambio_contraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #container {
            width:300px;
            height:300px;
            border: 3px solid blue;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            flex-direction: column;
        }
        #floatingInput{
            padding: 2rem 8.75rem;
        }
    </style>
    <div id="container" class="center-block">
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="Ingresar email..">
            <label for="floatingInput">EMAIL</label>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="card-img-top alert-link" Text="SOLICITAR NUEVA CLAVE" />

        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="ingresar clave enviada">
            <label for="floatingInput">CLAVE ENVIADA</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingInput" placeholder="ingresar nueva clave">
            <label for="floatingPassword">NUEVA CONTRASEÑA</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingInput" placeholder="ingresar nueva clave">
            <label for="floatingPassword">REPETIR NUEVA CONTRASEÑA</label>
        </div>
        <asp:Button ID="Button2" runat="server" CssClass="card-img-top alert-link" Text="CONFIRMAR" />
    </div>
</asp:Content>
