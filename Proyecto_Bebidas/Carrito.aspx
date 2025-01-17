<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Proyecto_Bebidas.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #principal {
            display: flex;
            flex-wrap:wrap;
        }
        .productos {
            width: 70%;
            height: 100px;
            display: grid;
            grid-template-areas:
                "logo nombre      aumento precio"
                "logo btneliminar aumento precio";
            grid-template-columns:  2fr 1fr 1fr;
            grid-template-rows: 2fr 1fr;
            align-items:center;
            border: 1px black solid;
        }
        .logo{
            grid-area:logo;
        }
        .nombre{
            grid-area:nombre;
        }
        .aumento{
            grid-area:aumento;
        }
        .precio{
            grid-area:precio;
        }
        .btneliminar{
            grid-area:btneliminar;
        }
        #total {
            width: 30%;
        }
    </style>

    <main>
        <h1>TU CARRITO 🛒</h1>
        <div id="principal">
            <div class="productos">
                <div class="logo"><h1>LOGO</h1></div>
                <div class="nombre"><h2>NOMBREPRODUCTO</h2></div>
                <div class="aumento"><h2>BTN MAS PRO</h2></div>
                <div class="precio"><h2>$$$$$</h2></div>
                <div class="btneliminar"><h1>BTNELIMINAR</h1></div>
            </div>
            <div id="total" style="border: 2px solid black">
                <section style="border-bottom:2px solid black">
                    <h3>RESUMEN DE COMPRA</h3>
                </section>
                <section id="detallecompra">
                    <asp:Label ID="lblprodcut" runat="server" Text="Productos"></asp:Label>
                    <asp:Label ID="lblprecio" runat="server" Text="$$$$$$$"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="TOTAL: "></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="$$$$$$$"></asp:Label><br />

                    <asp:Button ID="btnConfirmarcompra" runat="server" Text="CONFIRMAR COMPRA" />
                </section>
            </div>
        </div>
    </main>
</asp:Content>
