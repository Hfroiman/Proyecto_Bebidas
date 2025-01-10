<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recupero_Mail.aspx.cs" Inherits="Proyecto_Bebidas.Recupero_Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #div {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #principal {
            width:250px;
            border: 3px solid darkgray;
            display: flex;
            flex-direction: column;
        }
    </style>

    <div id="div">
        <div id="principal">
            <h4>Completar con los datos solicitados</h4>
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email a recuperar</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">contraseña nueva</label>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="SOLICITAR EMAIL RELACIONADO" />
        </div>
    </div>
</asp:Content>
