<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Cadastromaster.aspx.cs" Inherits="Cadastromaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro responsavel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Cadastro de Responsavel da escola</h5>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--5-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">
                        <div style="width: 100%;">
                            <!--nome-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do responsavel"></asp:TextBox>
                                <asp:Label for="RSP_nome" runat="server" Text="Nome" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras</span>
                            </div>

                        </div>

                        <div style="width: 100%;">

                            <!--email-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_email" runat="server" CssClass="mdl-textfield__input" ToolTip="email do responsavel"></asp:TextBox>
                                <asp:Label for="RSP_email" runat="server" Text="responsavel@email.com" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras</span>
                            </div>

                        </div>

                        <!--Cargo-->
                        <div class="mdl-textfield mdl-js-textfield" style="width: 45%; margin-right: 10px;">
                            <asp:TextBox ID="RSP_cargo" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                            <asp:Label for="RSP_cargo" runat="server" Text="Cargo" CssClass="mdl-textfield__label"></asp:Label>
                        </div>

                        <!--telefone-->
                        <div class="mdl-textfield mdl-js-textfield" style="width: 45%; text-align: right;">
                            <asp:TextBox ID="RSP_tel" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                            <asp:Label for="RSP_tel" runat="server" Text="Tel.: (xx) 0000-0000" CssClass="mdl-textfield__label"></asp:Label>
                        </div>

                        <div style="width: 100%;">

                            <!--usuario-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="USR_user" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="USR_user" runat="server" Text="Usuario" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras e números!</span>
                            </div>

                            <!--matricula-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_matricula" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="RSP_matricula" runat="server" Text="Matricula" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--horario-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_horario" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="RSP_horario" runat="server" Text="Horario de atendimento" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <div style="width: 100%;">

                            <!--senha               ver validacao de senha-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="USR_pwd" runat="server" CssClass="mdl-textfield__input" TextMode="Password"></asp:TextBox>
                                <asp:Label for="USR_pwd" runat="server" Text="senha" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">ver a validacao de senha</span>
                            </div>

                            <!--status - slider-->
                            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="ALN_status" style="max-width: 70%; color: #888;">
                                <input type="checkbox" id="ALN_status" class="mdl-switch__input" checked>
                                <span class="mdl-switch__label">Ativo</span>
                            </label>

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
                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet" style="text-align: center; margin-right: 0px; padding-right: 0px;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 300px; height: 300px; display: block; text-align: center; margin: auto;" />
                    <br>
                    <br>
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Foto</button>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

    <!--modal foto-->
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

    <script>

        var modalButton1 = document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

    </script>

</asp:Content>

