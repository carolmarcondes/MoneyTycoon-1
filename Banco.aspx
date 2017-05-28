<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Banco.aspx.cs" Inherits="Banco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Banco</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="mdl-grid" style="padding-top: 9%;">
        <div class="mdl-cell mdl-cell--2-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--6-col-tablet">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--8-col-tablet">

                    <a id="emprestimo" href="#">
                        <img src="Imagens/emprestimo.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 10%; display: block; margin-bottom: 5%;" />
                        <div class="mdl-tooltip mdl-tooltip--left" for="emprestimo">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>

                    <a id="cheque" class="show-modal">
                        <img src="Imagens/cheque.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 10%; display: block; margin-bottom: 5%;" />
                        <div class="mdl-tooltip mdl-tooltip--left" for="cheque">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>

                    <a id="transferencia" href="#">
                        <img src="Imagens/tranferencia.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 10%; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--left" for="transferencia">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>

                </div>

                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-tablet">
                    <div class="demo-list-action mdl-list mdl-shadow--2dp" style="margin-top: 10%; width: 100%;">

                        <h6 style="color: #0D47A1; text-align: center; margin-top: 10px;">Extrato rapido</h6>

                        <ul class="mdl-list">
                            <li class="mdl-list__item">
                                <span class="mdl-list__item-primary-content">+100 Tarefa de casa
                                </span>
                            </li>
                            <li class="mdl-list__item">
                                <span class="mdl-list__item-primary-content">+ 80 Trabalho em grupo
                                </span>
                            </li>
                            <li class="mdl-list__item">
                                <span class="mdl-list__item-primary-content">-150 Compra    
                                </span>
                            </li>
                            <li class="mdl-list__item">
                                <span class="mdl-list__item-primary-content">Saldo: 30+   
                                </span>
                            </li>
                        </ul>
                        <div style="text-align: center;">
                            <asp:Button ID="btnextrato" runat="server" Text="Extrato detalhado" CssClass="mdl-button mdl-js-button mdl-button--raised" />
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--2-col-desktop mdl-cell--hide-tablet"></div>
                </div>
                
                <!--modal cheque especial-->
                <dialog class="mdl-dialog" style="width:60%;" id="modalcheque">
                    <div class="mdl-dialog__content">
                        <h6 style="color: #0D47A1; text-align: center;">Cheque especial</h6>
                        <p>
                            Quando você precisa usar mais dinheiro do que tem na conta corrente e fica com o saldo negativo, 
                            isso significa que você entrou no cheque especial. O cheque especial é um crédito que o banco 
                            deixa aprovado caso o saldo de sua conta entre no negativo.</p>
                        <p>Mas cuidado: esse crédito custa bem caro porque tem uma das maiores taxas de juros entre os empréstimos.
                        </p>
                        <p>Como o cheque especial é fácil de pegar – você entra automaticamente no limite da conta quando usa mais 
                            dinheiro do que tem – o banco sobe a taxa de juros porque não sabe se você pagará essa dívida em pouco 
                            tempo. Normalmente, quando você precisa de um empréstimo, o banco faz uma análise de crédito e decide 
                            se vai emprestar algum valor e qual o prazo de pagamento. No cheque especial é diferente. Você usa o 
                            dinheiro e paga de volta assim que fizer algum depósito na conta corrente. Então, sem saber quando 
                            receberá esse valor, o banco cobra taxas altas e o que você deve sobe rapidamente.</p>
                    </div>
                    <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
                        <button type="button" class="mdl-button close">Entendi!</button>
                    </div>
                </dialog>

                <script>
                    var dialog = document.querySelector('#modalcheque');
                    var showModalButton = document.querySelector('#cheque');
                    if (!dialog.showModal) {
                        dialogPolyfill.registerDialog(dialog);
                    }
                    showModalButton.addEventListener('click', function () {
                        dialog.showModal();
                    });
                    dialog.querySelector('.close').addEventListener('click', function () {
                        dialog.close();
                    });
                </script>
</asp:Content>

