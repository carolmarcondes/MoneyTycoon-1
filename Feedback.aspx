<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Entre em contato</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--2-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Entre em contato</h5>
            <p>Mande sua sugestão ou reclamação!</p>
            <div class="mdl-grid">
                <div style="text-align: center;">

                    <!--nome-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                        <asp:TextBox ID="FDB_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo"></asp:TextBox>
                        <asp:Label for="FDB_nome" runat="server" Text="Seu Nome" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só letras</span>
                    </div>

                    <!--email-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                        <asp:TextBox ID="FDB_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email" TextMode="Email"></asp:TextBox>
                        <asp:Label for="FDB_email" runat="server" Text="Digite um email para que possamos retornar" CssClass="mdl-textfield__label"></asp:Label>
                    </div>

                    <!--telefone-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                        <asp:TextBox ID="FDB_telefone" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno" TextMode="Phone"></asp:TextBox>
                        <asp:Label for="FDB_telefone" runat="server" Text="Digite seu telefone ou celular" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros</span>
                    </div>

                    <!--assunto-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                        <asp:TextBox ID="FDB_assunto" runat="server" CssClass="mdl-textfield__input" ToolTip="Assunto"></asp:TextBox>
                        <asp:Label for="FDB_assunto" runat="server" Text="Assunto do contato" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só letras</span>
                    </div>

                    <!--textao-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 90%; margin-right: 10px; height: 20%;">
                        <asp:TextBox ID="FDB_texto" runat="server" CssClass="mdl-textfield__input" ToolTip="Texto do comentario" TextMode="MultiLine"></asp:TextBox>
                        <asp:Label for="FDB_texto" runat="server" Text="Digite aqui o que deseja nos falar" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só letras</span>
                    </div>
                    <br />
                </div>
                <div style="width: 100%; text-align: center;">
                    <asp:Button ID="btnsalvar" runat="server" Text="Enviar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                </div>
            </div>

            <div class="mdl-cell mdl-cell--2-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        </div>
</asp:Content>

