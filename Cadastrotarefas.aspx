<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastrotarefas.aspx.cs" Inherits="Cadastrotarefas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro de atividades</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Cadastro de tarefas</h5>
            <div class="mdl-grid">

                <div style="width: 100%; text-align: center;">
                    <!--cadastro-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                        <asp:TextBox ID="ATV_descricao" runat="server" CssClass="mdl-textfield__input" ToolTip="Cadastro das tarefas"></asp:TextBox>
                        <asp:Label for="ATV_descicao" runat="server" Text="Tarefa" CssClass="mdl-textfield__label"></asp:Label>
                    </div>
                </div>

                <div style="width: 100%; text-align: center;">
                    <!--minimo-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 15%;">
                        <asp:TextBox ID="ATV_valormin" runat="server" CssClass="mdl-textfield__input" ToolTip="Valor min" TextMode="Number"></asp:TextBox>
                        <asp:Label for="ATV_valormin" runat="server" Text="Valor minimo" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros inteiros</span>
                    </div>

                    <!--maximo-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 20%;">
                        <asp:TextBox ID="ATV_valormax" runat="server" CssClass="mdl-textfield__input" ToolTip="Valor max" TextMode="Number"></asp:TextBox>
                        <asp:Label for="ATV_valormax" runat="server" Text="Valor maximo" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros inteiros</span>
                    </div>

                </div>

                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" OnClick="btnsalvar_Click"/>
                    <asp:Button ID="btnalterar" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                    <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                </div>
                <asp:label id="confirmacao" runat="server" text="Label"></asp:label>
            </div>

        </div>

        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

</asp:Content>

