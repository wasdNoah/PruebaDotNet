<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PruebaDotNet.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <form runat="server">
            <br />
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Usuario</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="usuario"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Contraseña</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="password" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button runat="server" ID="botonIngresar" CssClass="btn btn-primary" Text="Ingresar" OnClick="botonIngresar_Click"/>
        </form>
    </div>
</asp:Content>
