<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Proyecto_Bebidas.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #main {
            display: flex;
            justify-content: center;
        }

        #menu {
            width: 900px;
            height: 500px;
            background-color:darkgrey;
        }

        .sector {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            padding-top: 25px;
        }

        .sector2 {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            padding-top: 25px;
        }
    </style>

    <main id="body">
        <script src="https://img.freepik.com/foto-gratis/fondo-gris-pintado_53876-94041.jpg" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <div id="main">
            <div id="menu">
                <div class="sector">
                    <asp:TextBox ID="txtapellido" runat="server" type="text" class="form-control" placeholder="APELLIDO.."></asp:TextBox>
                    <asp:TextBox ID="txtnombre" runat="server" type="text" class="form-control" placeholder="NOMBRE.."></asp:TextBox>
                    <asp:TextBox ID="txtdni" runat="server" type="text" class="form-control" placeholder="DNI.."></asp:TextBox>
                </div>
                <div class="sector">
                    <asp:TextBox ID="txttelefono" runat="server" type="text" class="form-control" placeholder="TELEFONO.."></asp:TextBox>
                    <asp:TextBox ID="txtemail" runat="server" type="email" class="form-control" placeholder="EMAIL.."></asp:TextBox>
                </div>
                <div class="sector">
                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="true">
                        <asp:ListItem>SELECIONAR LOCALIDAD</asp:ListItem>
                        <asp:ListItem>Tigre</asp:ListItem>
                        <asp:ListItem>San Isidro</asp:ListItem>
                        <asp:ListItem>San Fernando</asp:ListItem>
                    </asp:DropDownList>

                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" value="BARRIO">
                        <asp:ListItem>SELECIONAR BARRIO</asp:ListItem>
                        <asp:ListItem>Ricardo Rojas</asp:ListItem>
                        <asp:ListItem>Benavidez</asp:ListItem>
                        <asp:ListItem>Talar</asp:ListItem>
                        <asp:ListItem>Troncos de talar</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="sector">
                    <asp:TextBox ID="txtcalle" runat="server" type="text" class="form-control" placeholder="CALLE.."></asp:TextBox>
                    <asp:TextBox ID="txtaltura" runat="server" type="text" class="form-control" placeholder="ALTURA.."></asp:TextBox>
                </div>
                <div class="sector2">
                    <asp:TextBox ID="txtusuario" runat="server" type="text" class="form-control" placeholder="USUARIO.."></asp:TextBox>
                </div>
                <div class="sector2">
                    <asp:TextBox ID="txtpasword1" runat="server" type="password" class="form-control" placeholder="CONTRASEÑA.."></asp:TextBox>
                </div>
                <div class="sector2">
                    <asp:TextBox ID="txtpasword2" runat="server" type="password" class="form-control" placeholder="CONTRASEÑA.."></asp:TextBox>
                </div>
                <div class="sector2">
                    <asp:Button type="button" runat="server" class="btn btn-success btn-block" Text="ENVIAR"/>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
