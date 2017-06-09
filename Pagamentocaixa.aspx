<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pagamentocaixa.aspx.cs" Inherits="Pagamentocaixa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Pagamento no caixa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp" style="padding: 4%;">
            <h5 class="mdl-color-text--indigo mdl-typography--text-center">Cadastro das formas de pagamento no caixa</h5>

                <div style="width: 100%; text-align: center;">
                    <!--cadastro-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 100%; margin-right: 10px;">
                        <asp:TextBox ID="PGM_descricao" runat="server" CssClass="mdl-textfield__input" ToolTip="Cadastro das formas de pagamento"></asp:TextBox>
                        <asp:Label for="PGM_descicao" runat="server" Text="Forma de pagamento" CssClass="mdl-textfield__label"></asp:Label>
                    </div>
                </div>

                <div style="width: 100%; text-align: center;">
                    <!--juros-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 15%;">
                        <asp:TextBox ID="PGM_juros" runat="server" CssClass="mdl-textfield__input" ToolTip="Multiplicador dos juros"></asp:TextBox>
                        <asp:Label for="PGM_juros" runat="server" Text="Valor a ser multiplicado" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros</span>
                    </div>

                    <!--prazo-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 15%;">
                        <asp:TextBox ID="PGM_prazo" runat="server" CssClass="mdl-textfield__input" ToolTip="Parcelas a cada semana"></asp:TextBox>
                        <asp:Label for="PGM_prazo" runat="server" Text="Parcelas" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros</span>
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

</asp:Content>

