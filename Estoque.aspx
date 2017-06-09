<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Estoque.aspx.cs" Inherits="Estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ajuste de estoque</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
        <h5 class="mdl-color-text--indigo mdl-typography--text-center">Ajuste de estoque</h5>
            <div class="mdl-grid" style="width: 80%;">

                <div style="width: 100%; text-align: center;">
                    <!--escola - dropdown-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                        <asp:DropDownList ID="ESC_nome" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Escola">
                            <asp:ListItem>Todas</asp:ListItem>
                            <asp:ListItem>Instituto Xavier</asp:ListItem>
                            <asp:ListItem>Colegio Chiquititas</asp:ListItem>
                            <asp:ListItem>Outra escola</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div style="width: 100%; text-align: center;">
                    <!--produto - dropdown-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                        <asp:DropDownList ID="PDT_nome" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Produto">
                            <asp:ListItem>Todos</asp:ListItem>
                            <asp:ListItem>Ferrari</asp:ListItem>
                            <asp:ListItem>Audi</asp:ListItem>
                            <asp:ListItem>Uno</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div style="width: 100%; text-align: center;">
                    <!--quantidade-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 20%;">
                        <asp:TextBox ID="EST_qnt" runat="server" CssClass="mdl-textfield__input" ToolTip="Quantidade padrão"></asp:TextBox>
                        <asp:Label for="EST_qnt" runat="server" Text="Quantidade padrão" CssClass="mdl-textfield__label"></asp:Label>
                        <span class="mdl-textfield__error">Só numeros inteiros</span>
                    </div>

                    <div style="width: 100%; text-align: center;">
                        <!--adicionar quantidade-->
                        <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-right: 15px;">
                            <asp:TextBox ID="EST_qntadd" runat="server" CssClass="mdl-textfield__input" ToolTip="Quantidade padrão"></asp:TextBox>
                            <asp:Label for="EST_qntadd" runat="server" Text="QNT" CssClass="mdl-textfield__label"></asp:Label>
                            <span class="mdl-textfield__error">Só numeros inteiros</span>
                        </div>
                        <asp:Button ID="btnestoque" runat="server" Text="Adicionar" CssClass="mdl-button mdl-js-button mdl-button--raised" />
                    </div>
                </div>

                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%; margin-bottom:3%;">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                </div>
            </div>

        </div>

</asp:Content>

