<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_Bebidas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .card-body {
            width: 100%; 
            max-width: 500px; 
            padding: 15px; 
            font-size: 1.2rem;
            border: 1px solid #ccc;
            border-radius: 8px; 
        }
        .search-button {
        padding: 12px 20px;
        font-size: 1.2rem;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        background-color: #007bff;
        color: white;
    }
    </style>

    <div>
        <header>
            <nav class="navbar bg-body-tertiary">
                <div class="carousel-indicators form-control-lg">
                    <asp:TextBox ID="txtBuscar" CssClass="card-body" runat="server" type="search" placeholder="Buscar...." aria-label="Search"></asp:TextBox>
                    <asp:Button ID="btnbuscar" CssClass="search-button" runat="server" Text="Buscar" type="submit" />
                </div>
            </nav>
            <nav>
                <div class="btn-group btn-group-sm" role="group" aria-label="Basic example" id="nav2">
                    <asp:Button ID="btnOfertas" class="btn btn-primary" runat="server" Text="Ofertas" />
                    <asp:Button ID="btnCombos" class="btn btn-primary" runat="server" Text="Combos" />
                    <asp:Button ID="btnVinos" class="btn btn-primary" runat="server" Text="Vinos" />
                    <asp:Button ID="btnCervezas" class="btn btn-primary" runat="server" Text="Cervezas" />
                    <asp:Button ID="btnGaseosas" class="btn btn-primary" runat="server" Text="Gaseosas" />
                    <asp:Button ID="btnJugos" class="btn btn-primary" runat="server" Text="Jugos" />
                </div>
            </nav>
        </header>
        <main>
            <div id="imgprincipal">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/imgprincipal.jpg" alt="Imagen ilustrativa" Width="100%" Height="650px" />
            </div>
            <div id="Combos" style="border: 3px solid brown">
                <h2>COMBOS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div id="Vinos" style="border: 3px solid blue">
                <h2>VINOS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div id="Cervezas" style="border: 3px solid yellow">
                <h2>CERVEZAS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div id="Gaseosas" style="border: 3px solid blue">
                >
                <h2>GASEOSAS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div id="Jugos" style="border: 3px solid yellow">
                >
                <h2>JUGOS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div id="Wiskys" style="border: 3px solid blue">
                >
                <h2>WISKYS</h2>
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>