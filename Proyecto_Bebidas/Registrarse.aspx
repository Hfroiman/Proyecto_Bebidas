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
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="APELLIDO..">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="NOMBRE..">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="DNI..">
                </div>
                <div class="sector">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="TELEFONO..">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="EMAIL..">
                </div>
                <div class="sector">
                    <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="SELECIONAR LOCALIDAD">
                    <datalist id="datalistOptions">
                        <option value="tigre">
                        <option value="New York">
                        <option value="Seattle">
                        <option value="Los Angeles">
                        <option value="Chicago">
                    </datalist>
                    <input class="form-control" list="datalistOptions2" id="exampleDataList" placeholder="SELECIONAR BARRIO">
                    <datalist id="datalistOptions2">
                        <option value="las tunas">
                        <option value="pacheco">
                        <option value="delfino">
                        <option value="Los Angeles">
                        <option value="Chicago">
                    </datalist>
                </div>
                <div class="sector">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="CALLE..">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="ALTURA..">
                </div>
                <div class="sector2">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="USUARIO..">
                </div>
                <div class="sector2">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="CONTRASEÑA..">
                </div>
                <div class="sector2">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="CONTRASEÑA..">
                </div>
                <div class="sector2">
                    <button type="button" class="btn btn-success">Enviar</button>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
