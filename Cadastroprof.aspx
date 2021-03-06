﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Cadastroprof.aspx.cs" Inherits="Cadastroprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro professor</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-color--white mdl-shadow--2dp demo-charts">
            <h5 style="text-align: center; color: #888;">Cadastro de Professor</h5>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--9-col-desktop mdl-cell--8-col-tablet">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 10px;">
                        <div style="width: 100%;">
                            <!--nome-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                                <asp:TextBox ID="ADM_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do professor" MaxLength="45"></asp:TextBox>
                                <asp:Label for="ADM_nome" runat="server" Text="Nome" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Maximo de 45 caracteres.</span>
                            </div>

                        </div>

                        <div style="width: 100%;">

                            <!--email-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                                <asp:TextBox ID="ADM_email" runat="server" CssClass="mdl-textfield__input" ToolTip="email do professor" TextMode="Email"></asp:TextBox>
                                <asp:Label for="ADM_email" runat="server" Text="professor@email.com" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Digite um email válido. nome@servidor.com</span>
                            </div>

                        </div>

                        <!--materia - dropdown-->
                        <!--
                        <div class="mdl-textfield mdl-js-textfield" style="width: 79%;">
                            <asp:CheckBoxList ID="MAT_ID" runat="server" CssClass="mdl-js-ripple-effect" CellPadding="10" CellSpacing="5" RepeatColumns="5">
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
                        </div>-->
                        <div style="width: 100%;">
                            <!--tirar quando voltar ao pi-->
                            <!--sala - dropdown-->
                            <!--
                        <div class="mdl-textfield mdl-js-textfield" style="width: 19%; margin-left: 5%; margin-right:10px;"><!--voltar marginleft para 2% e tirar o margin right->
                            <asp:DropDownList ID="SAL_ID" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                <asp:ListItem>7A</asp:ListItem>
                                <asp:ListItem>7B</asp:ListItem>
                                <asp:ListItem>7C</asp:ListItem>
                            </asp:DropDownList>
                        </div>-->

                            <!--<div style="width: 100%;"> manter quando voltar ao pi-->

                            <!--usuario-->
                            <!--
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="USR_user" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="USR_user" runat="server" Text="Usuario" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras e números!</span>
                            </div>-->

                            <!--funcao-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-right: 10px;">
                                <asp:TextBox ID="ADM_funcao" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="ADM_funcao" runat="server" Text="Função" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--matricula-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="ADM_matricula" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="ADM_matricula" runat="server" Text="Matricula" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <div style="width: 100%;">
                                <!--remover pro pi-->
                                <div class="mdl-textfield mdl-js-textfield" style="width: 55%;">
                                    <asp:DropDownList ID="ddl2" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                        
                                    </asp:DropDownList>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-left: 5%; margin-right: 10px;">
                                    <asp:DropDownList ID="ddl" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                        
                                    </asp:DropDownList>
                                </div>

                                <!--senha               ver validacao de senha-->
                                <!--
                                <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                    <asp:TextBox ID="USR_pwd" runat="server" CssClass="mdl-textfield__input" TextMode="Password"></asp:TextBox>
                                    <asp:Label for="USR_pwd" runat="server" Text="senha" CssClass="mdl-textfield__label"></asp:Label>
                                    <span class="mdl-textfield__error">ver a validacao de senha</span>
                                </div>-->

                                <!--status - slider-->
                                <!--
                                <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="ALN_status" style="max-width: 70%; color: #888;">
                                    <input type="checkbox" id="ALN_status" class="mdl-switch__input" checked>
                                    <span class="mdl-switch__label">Ativo</span>
                                </label>-->

                            </div>

                            <!--barra de botoes de acao-->
                            <div style="text-align: center; width: 100%; margin-top: 5%">
                                <asp:Button ID="btnsalvar" runat="server" Text="Salvar novo" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" OnClick="btnsalvar_Click" />
                                <asp:Button ID="btnalterar" runat="server" Text="Atualizar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                                <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                                <!--<asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />-->
                                <!--<button id="btnconsulta" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Pesquisar</button>-->
                            </div>
                            <asp:Label ID="confirmacao" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet" style="padding-right: 20px; padding-left: 5px; text-align: center;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: auto;" />
                    <br>
                    <br>
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Foto</button>
                </div>
            </div>

        </div>
    </div>
    <!--
    <!--modal foto->
    <dialog class="mdl-dialog foto" id="modalfoto" style="width: 30%;">
        <div class="mdl-dialog__content">
            <p>
                Escolha a foto de perfil
            </p>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button1" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <!--modal consulta->
    <dialog class="mdl-dialog pesquisa" style="width: 60%;" id="pesquisa">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Professores cadastradas</h6>
            <br />
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--6-col">
                    <br />
                    <asp:Label ID="desordenado" runat="server" Text="lista desordenada"></asp:Label>
                    <br />
                </div>
                <div class="mdl-cell mdl-cell--6-col">
                    <br />
                    <asp:Label ID="ordenado" runat="server" Text="lista ordenada"></asp:Label>
                    <br />
                </div>
            </div>
            <asp:Button ID="btnordenar" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btnfecha" runat="server" Text="Cadastrar novo" CssClass="mdl-button close" />
        </div>
    </dialog>

    <script>

        document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        document.querySelector('#btnconsulta').addEventListener('click', function () {
            document.querySelector('.pesquisa').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });


    </script>
    -->
</asp:Content>

