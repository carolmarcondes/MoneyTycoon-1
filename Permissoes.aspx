<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Permissoes.aspx.cs" Inherits="Permissoes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Permissões de usuario</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Cadastro de perfil de usuario</h5>
            <div class="mdl-grid">

                <div style="width: 100%; text-align: center;">
                    <!--cadastro-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                        <asp:TextBox ID="PER_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Cadastro dos perfis de usuario"></asp:TextBox>
                        <asp:Label for="PER_nome" runat="server" Text="Tipo de usuario" CssClass="mdl-textfield__label"></asp:Label>
                    </div>
                </div>

                <div style="width: 50%; margin-left: 25%;">
                    <!--lista de telas com checkbox-->
                    <ul class="demo-list-control mdl-list">
                        <li class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons  mdl-list__item-avatar">face</i>
                                Cadastro Professor
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="list-switch-1">
                                    <input type="checkbox" id="list-switch-1" class="mdl-switch__input" checked />
                                </label>
                            </span>
                        </li>
                        <li class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons  mdl-list__item-avatar">face</i>
                                Cadastro aluno
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="list-switch-1">
                                    <input type="checkbox" id="list-switch-1" class="mdl-switch__input" checked />
                                </label>
                            </span>
                        </li>
                        <li class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons  mdl-list__item-avatar">library_books</i>
                                Relatorio de vendas
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="list-switch-1">
                                    <input type="checkbox" id="list-switch-1" class="mdl-switch__input" checked />
                                </label>
                            </span>
                        </li>
                        <li class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons  mdl-list__item-avatar">library_books</i>
                                Relatorio de alunos
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="list-switch-1">
                                    <input type="checkbox" id="list-switch-1" class="mdl-switch__input" checked />
                                </label>
                            </span>
                        </li>
                        <li class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons  mdl-list__item-avatar">library_books</i>
                                Relatorio de tempo de uso
                            </span>
                            <span class="mdl-list__item-secondary-action">
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="list-switch-1">
                                    <input type="checkbox" id="list-switch-1" class="mdl-switch__input" checked />
                                </label>
                            </span>
                        </li>
                    </ul>


                </div>

                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                    <asp:Button ID="btnalterar" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                    <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                </div>
            </div>
</asp:Content>

