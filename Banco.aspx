<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Banco.aspx.cs" Inherits="Banco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Banco</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--4-col">

            <div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 100%; height: auto;" id="emprestimo">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange-600 mdl-color-text--white">
                    <h2 class="mdl-card__title-text">Emprestimos</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    Aqui voce podera realizar emprestimos para comprar aquela cazona!
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Simulacao</a>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 100%; height: auto;" id="cheque">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange-600 mdl-color-text--white">
                    <!--style="background: url('Imagens/cheque.jpg') center / cover; height:120px;"-->
                    <h2 class="mdl-card__title-text">Cheque especial</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    Veja aqui como funciona o cheque especial e nao faça cagada!
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Ver regras</a>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 100%; height: auto;" id="transferencia">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange-600 mdl-color-text--white">
                    <h2 class="mdl-card__title-text">Transferencia</h2>
                </div>
                <div class="mdl-card__supporting-text">
                    Transfira creditos para os amigos, ou pague ele por ter feito uma tarefa pra voce.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Transferir</a>
                </div>
            </div>
        </div>
    </div>

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--5-col">
            <div class="mdl-cell mdl-cell--12-col mdl-color--blue-800 mdl-shadow--2dp mdl-color-text--white" style="padding: 3%; padding-top: 5%;">
                <span style="text-align: center; font-size: xx-large;">Saldo disponivel: D$ 43234,00</span>
            </div>
            <div class="mdl-cell mdl-cell--12-col mdl-shadow--2dp mdl-color--white" style="padding: 3%;">
                <h6 style="color: #0D47A1; text-align: center; margin-top: 10px;">Extrato</h6>
                <br />
                <asp:label id="lblextrato" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label9" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label10" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label1" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label2" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label3" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label4" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label8" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label7" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label6" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
                <asp:label id="Label5" runat="server" text="Movimentacoes" cssclass="mdl-list__item-primary-content"></asp:label>
                <br />
            </div>
        </div>
        <div class="mdl-cell mdl-cell--7-col mdl-color--white mdl-shadow--2dp">
            <!--aqui esta o codigo do grafico. eh soh linka com o banco. ver isso com o cris e com o dionisio-->
            <img src="Imagens/grafico.png" style="width: 100%;" />
        </div>

    </div>


    <!--modal cheque especial-->
    <dialog class="mdl-dialog" style="width: 60%;" id="modalcheque">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Cheque especial</h6>
            <p>
                Quando você precisa usar mais dinheiro do que tem na conta corrente e fica com o saldo negativo, 
                            isso significa que você entrou no cheque especial. O cheque especial é um crédito que o banco 
                            deixa aprovado caso o saldo de sua conta entre no negativo.
            </p>
            <p>
                Mas cuidado: esse crédito custa bem caro porque tem uma das maiores taxas de juros entre os empréstimos.
            </p>
            <p>
                Como o cheque especial é fácil de pegar – você entra automaticamente no limite da conta quando usa mais 
                            dinheiro do que tem – o banco sobe a taxa de juros porque não sabe se você pagará essa dívida em pouco 
                            tempo. Normalmente, quando você precisa de um empréstimo, o banco faz uma análise de crédito e decide 
                            se vai emprestar algum valor e qual o prazo de pagamento. No cheque especial é diferente. Você usa o 
                            dinheiro e paga de volta assim que fizer algum depósito na conta corrente. Então, sem saber quando 
                            receberá esse valor, o banco cobra taxas altas e o que você deve sobe rapidamente.
            </p>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:button id="Button5" runat="server" text="Entendi" cssclass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <!--modal transferencia-->
    <dialog class="mdl-dialog mdl-color--white" style="width: 60%;" id="modaltransferencia">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Transferencia</h6>
            <p>
                Aqui voce pode transferir seus creditos para outro amigo. Pode transferir só para dar um presente para ele...ouuu...como pagamento de alguma tarefa feita,
                uma ajuda nos estudos... #ficadica.
            </p>
            <button type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" style="margin-right: auto;" id="howtransf">Como funciona a transferencia??</button>
            <br />
            <br />
            <div class="mdl-cell mdl-cell--8-col mdl-color--grey-200 mdl-shadow--2dp mdl-color-text--indigo" style="padding: 1%; margin: auto">
                <span style="font-size: x-large;">Saldo disponivel: D$ 43234,00</span>
            </div>
            <br />
            <p>Transferir para:</p>
            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                <asp:dropdownlist id="alunostransf" runat="server" cssclass="mdl-textfield__input mdl-js-ripple-effect">
                </asp:dropdownlist>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; align-items: center;">
                <asp:textbox id="valortransf" runat="server" cssclass="mdl-textfield__input"></asp:textbox>
                <asp:label for="valortransf" runat="server" text="Valor a transferir" cssclass="mdl-textfield__label"></asp:label>
            </div>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:button id="btntransf" runat="server" text="Transferir!" cssclass="mdl-button close mdl-color-text--blue" />
            <asp:button id="Button1" runat="server" text="Cancelar" cssclass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <!--modal emprestimo-->
    <dialog class="mdl-dialog" style="width: 60%;" id="modalemprestimo"><!-- background-image: url('Imagens/bg2.jpg'); background-size: cover; background-position:center;-->
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Emprestimo</h6>
            <p>
                Quer dinheiro rapido e facil? aqui tem. Mas pense muito bem antes de contratar, tem juros.
            </p>
            <p>
                O emprestimo tera uma taxa de 10% mais os juros de 3% por semana. faça Aqui a simulacao
            </p>
            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; align-items: center;">
                <asp:textbox id="valortotal" runat="server" cssclass="mdl-textfield__input"></asp:textbox>
                <asp:label for="valortransf" runat="server" text="Total que quero emprestar" cssclass="mdl-textfield__label"></asp:label>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-left:10%;">
                <asp:dropdownlist id="ddpparcelas" runat="server" cssclass="mdl-textfield__input mdl-js-ripple-effect">
                </asp:dropdownlist>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 35%;">
                <asp:label runat="server" text="Valor da parcela" id="lblparcela" CssClass="mdl-textfield__label"></asp:label>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-left:10%;">
                <asp:label runat="server" text="Total a ser pago" id="Label12" CssClass="mdl-textfield__label"></asp:label>
            </div>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:button id="Button2" runat="server" text="Emprestar" cssclass="mdl-button close mdl-color-text--blue" />
            <asp:button id="Button3" runat="server" text="Cancelar" cssclass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <!--modal regras transferencia-->
    <dialog class="mdl-dialog" style="width: 40%;" id="modaltransf2">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Transferencia</h6>
            <p>
                Para fazer uma transferencia, selecione um coleguinha no menu abaixo do seu saldo disponivel para transferencia.
                A cada transferencia sera cobrada uma taxa de D$ 00,00. Porque nada é de graça.
            </p>
            <p>
                Se voce for receber, só aguarde os creditos aparecerem no seu extrato e verifique se realmente foi descontado do colega.
            </p>
            <p>
                Não ha motivos para a transferencia, pode transferir por qualquer motivo. Seja esperto!
            </p>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:button id="Button4" runat="server" text="Entendi" cssclass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <script>
        document.querySelector('#emprestimo').addEventListener('click', function () {
            document.querySelector('#modalemprestimo').showModal();
        });

        document.querySelector('#transferencia').addEventListener('click', function () {
            document.querySelector('#modaltransferencia').showModal();
        });

        document.querySelector('#howtransf').addEventListener('click', function () {
            document.querySelector('#modaltransf2').showModal();
        });

        document.querySelector('#cheque').addEventListener('click', function () {
            document.querySelector('#modalcheque').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });
    </script>
</asp:Content>

