﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfilaluno.aspx.cs" Inherits="Perfilaluno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Meu Perfil</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
        <h5 class="mdl-color-text--indigo mdl-typography--text-center">Meu perfil</h5>
        <div class="mdl-grid">

            <div class="mdl-cell mdl-cell--4-col" style="padding-right: 20px; padding-left: 5px; text-align: center;">
                <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: auto;" />
                <br>
                <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Foto</button>
            </div>

            <div class="mdl-cell mdl-cell--8-col">

                <div style="width: 100%;">
                    <!--nome-->
                    <asp:Label ID="ALN_nome" runat="server" Text="Nome do aluno" Width="100%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                </div>

                <div style="width: 100%;">
                    <!--salas-->
                    <asp:Label ID="SAL_ID" runat="server" Text="Salas e ano" Width="35%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                    <!--matricula-->
                    <asp:Label ID="ALN_matricula" runat="server" Text="Matricula" Width="60%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                </div>

                <div style="width: 100%;">
                    <!--usuario-->
                    <asp:Label ID="USD_user" runat="server" Text="Usuario" Width="30%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                    <!--botao altera senha-->
                    <asp:Button ID="btnsenha" runat="server" Text="Troca senha" CssClass="mdl-button mdl-js-button mdl-button--raised" />
                </div>

                <div style="width: 100%;">
                    <!--codigo do cartao-->
                    <asp:Label ID="ALN_card" runat="server" Text="Codigo cartão" Width="40%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                </div>

                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                </div>
            </div>

        </div>

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

