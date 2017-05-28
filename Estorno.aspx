<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Estorno.aspx.cs" Inherits="Estorno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Estorno de creditos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Estorno creditos</h5>
            <div class="mdl-grid">

                <div style="width: 100%; text-align: center;">

                    <!--Sala-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-left: 5%;">
                        <asp:DropDownList ID="PDT_unidade" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Sala">
                            <asp:ListItem>7ºA</asp:ListItem>
                            <asp:ListItem>7ºB</asp:ListItem>
                            <asp:ListItem>7ºC</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!--Aluno-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 50%;">
                        <asp:DropDownList ID="ALN_nome" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Nome do aluno">
                            <asp:ListItem>Wandercleydison</asp:ListItem>
                            <asp:ListItem>Derpina</asp:ListItem>
                            <asp:ListItem>Deperson</asp:ListItem>
                            <asp:ListItem>Juvenalda</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-right: 10px;">
                                <asp:TextBox ID="MBC_entrada" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor a ser extornado" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <!--barra de botoes de acao-->
                        <div style="text-align: center; width: 100%; margin-top: 5%">
                            <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                            <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                        </div>
                    </div>
        </div>
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

</asp:Content>

