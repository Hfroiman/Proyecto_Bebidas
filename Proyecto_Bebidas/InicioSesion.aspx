<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="Proyecto_Bebidas.InicioSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #main {
            width: 7fr;
            height: 750px;
            display: flex;
            justify-content: center;
        }

        #menu {
            display: flex;
            width: 550px;
            height: 650px;
            background-color: darkgrey;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        #TextBox1{
            margin-bottom:5px;
        }
    </style>

    <main id="body">
        <div id="main">
            <div id="menu">
                <h4>INGRESAR</h4>
                <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="EMAIL.."></asp:TextBox>
                <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="CONSTRASEÑA.."></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Ingresar" />

                <a href="Cambio_contraseña.aspx" style="text-decoration:none; color:black" class="fs-4">No recuerdo la contraseña</a>
                <a href="Recupero_Mail.aspx" style="text-decoration:none; color:black" class="fs-5">No recuerdo mi mail</a>
            </div>
        </div>
    </main>
</asp:Content>
