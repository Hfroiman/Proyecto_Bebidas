<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_Bebidas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    </style>
    <div>
        <header>
            <nav class="navbar bg-body-tertiary">
                <div class="carousel-indicators form-control-lg">
                    <asp:TextBox ID="txtBuscar" CssClass="card-body" runat="server" type="search" placeholder="Buscar...." aria-label="Search"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" type="submit" />
                </div>
            </nav>
            <nav>
                <div class="btn-group btn-group-sm" role="group" aria-label="Basic example" id="nav2">
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Oferta" />
                    <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Combos" />
                    <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="Vinos" />
                    <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="Cervezas" />
                    <asp:Button ID="Button6" class="btn btn-primary" runat="server" Text="Gaseosas" />
                    <asp:Button ID="Button7" class="btn btn-primary" runat="server" Text="Juegos" />
                </div>
            </nav>
        </header>
        <main>
            <div id="imgprincipal">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/imgprincipal.jpg" alt="Imagen ilustrativa" Width="100%" Height="650px" />
            </div>
            <div id="Combos" style="border:3px solid brown">
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

            <div id="Vinos" style="border:3px solid blue">
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

            <div id="Cervezas" style="border:3px solid yellow">
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

            <div id="Gaseosas" style="border:3px solid blue">>
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

            <div id="Jugos" style="border:3px solid yellow">>
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

            <div id="Wiskys" style="border:3px solid blue">>
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
