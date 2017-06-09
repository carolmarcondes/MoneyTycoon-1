<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>

    <link href="css/material-azul-laranja.min.css" rel="stylesheet" />
    <script src="css/material.js"></script>
    <link href="fonts/iconfont/material-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/css.css">
    <script src="js/scripts.js"></script>

</head>
<body class="fundo">
    <form id="form1" runat="server">
        <div class="mdl-grid" style="margin-top: 20%;">

            <div class="mdl-cell mdl-cell--3-col mdl-color--white mdl-shadow--4dp" style="padding: 2%; margin:auto;">
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
    </form>
</body>
</html>
