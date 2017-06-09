<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Entre em contato</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
        <h5 class="mdl-color-text--indigo mdl-typography--text-center">Entre em contato</h5>

        <div class="mdl-typography--text-center" style="width: 80%; margin: auto;">
            <p>Mande sua sugestão ou reclamação!</p>

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

            <div style="width: 100%; text-align: center; margin-bottom: 3%">
                <asp:Button ID="btnsalvar" runat="server" Text="Enviar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
            </div>
        </div>
    </div>

</asp:Content>

