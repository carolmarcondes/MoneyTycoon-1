<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Documentação.aspx.cs" Inherits="Documentação" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Documentação de ajuda</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
        <h5 class="mdl-color-text--indigo mdl-typography--text-center">Manual</h5>
        <div class="mdl-grid" style="width: 80%;">

            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#moneytycoon" class="mdl-tabs__tab is-active">Sobre o Money tycoon</a>
                    <a href="#comprar" class="mdl-tabs__tab">Como comprar</a>
                    <a href="#pagar" class="mdl-tabs__tab">Como pagar</a>
                </div>

                <div class="mdl-tabs__panel is-active" id="moneytycoon">
                    <p>objetivo do money tycoon é ensinar as crianças a comprarem</p>
                </div>
                <div class="mdl-tabs__panel" id="comprar">
                    <p>Para comprar primeiramente vc deve ser aluno. acesse o ecommerce escolha o procuto e clique em adicionar ao carrinho.</p>
                </div>
                <div class="mdl-tabs__panel" id="pagar">
                    <p>com o pedido feito va ate o caixa, passe seu cartao, digite sua senha e selecione a forma de pagamento para ser pago.</p>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

