<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid mdl-color--white mdl-shadow--2dp" style="margin: auto;">
        <div class="mdl-cell mdl-cell--6-col">
            <img src="Imagens/logo_mt.png" style="width: 100%" />
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <h6 class="mdl-color-text--indigo">Login</h6>
            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z,0-9]*" id="loguser">
                <label class="mdl-textfield__label" for="loguser">Digite seu usuário ou matrícula</label>
                <span class="mdl-textfield__error">Só letras e números!</span>
            </div>
            <br>
            <div class="mdl-textfield mdl-js-textfield">
                <input class="mdl-textfield__input" type="password" pattern="true" id="logpass">
                <label class="mdl-textfield__label" for="logpass">Digite sua senha</label>
                <span class="mdl-textfield__error">Não se esqueça da senha!</span>
            </div>
            <br>
            <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-2">
                <input type="checkbox" id="checkbox-2" class="mdl-checkbox__input">
                <span class="mdl-checkbox__label">Lembrar-me</span>
            </label>
            <a href="#"><small>Esqueci meu usuário ou senha</small></a>
            <br>
            <br>
            <asp:Button ID="logar" runat="server" Text="Entrar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
        </div>
    </div>

</asp:Content>

