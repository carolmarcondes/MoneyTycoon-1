﻿<%@ Page Title="Cadastro de sala" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastrosala.aspx.cs" Inherits="Cadastrosala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Cadastro de salas</h5>
            <div class="mdl-grid">

                <div style="width: 100%;">
                    <!--ano - dropdown-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-left: 4%">
                        <asp:DropDownList ID="ANO_ID" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!--sala-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 80%; margin-left: 10px;">
                        <asp:TextBox ID="SAL_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Cadastro das tarefas"></asp:TextBox>
                        <asp:Label for="SAL_nome" runat="server" Text="Nome da sala" CssClass="mdl-textfield__label"></asp:Label>
                    </div>

                    <!--materia - cheklist-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 98%; margin-left: 2%">
                        <asp:CheckBoxList ID="MAT_ID" runat="server" CssClass="mdl-js-ripple-effect" CellPadding="-1" CellSpacing="40" Height="100%" RepeatColumns="6">
                            <asp:ListItem>Artes</asp:ListItem>
                            <asp:ListItem>Biologia</asp:ListItem>
                            <asp:ListItem>Ciencias</asp:ListItem>
                            <asp:ListItem>Ed Fisica</asp:ListItem>
                            <asp:ListItem>Filosofia</asp:ListItem>
                            <asp:ListItem>Finanças</asp:ListItem>
                            <asp:ListItem>Fisica</asp:ListItem>
                            <asp:ListItem>Geografia</asp:ListItem>
                            <asp:ListItem>História</asp:ListItem>
                            <asp:ListItem>Informatica</asp:ListItem>
                            <asp:ListItem>Ingles</asp:ListItem>
                            <asp:ListItem>Matematica</asp:ListItem>
                            <asp:ListItem>Portugues</asp:ListItem>
                            <asp:ListItem>Quimica</asp:ListItem>
                            <asp:ListItem>Religião</asp:ListItem>
                            <asp:ListItem>Sociologia</asp:ListItem>
                            <asp:ListItem>Outras</asp:ListItem>
                        </asp:CheckBoxList>


                    </div>

                    </div>





                    <!--barra de botoes de acao-->
                    <div style="text-align: center; width: 100%; margin-top: 5%">
                        <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        <asp:Button ID="btnalterar" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                        <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                        <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                    </div>
    </div>
    </div>

        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

</asp:Content>
