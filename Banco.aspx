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
                <asp:Label ID="lblextrato" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label9" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label10" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label1" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label7" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label6" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text="Movimentacoes" CssClass="mdl-list__item-primary-content"></asp:Label><br />
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
            <asp:Button ID="Button5" runat="server" Text="Entendi" CssClass="mdl-button close mdl-color-text--deep-orange" />
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
            <button type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" style="margin-right: auto;">Como funciona a transferencia??</button>
            <br />
            <br />
            <div class="mdl-cell mdl-cell--8-col mdl-color--blue-100 mdl-shadow--2dp mdl-color-text--black" style="padding: 1%; margin:auto">
                <span style="font-size: x-large;">Saldo disponivel: D$ 43234,00</span>
            </div>
            <br />
            <p>Transferir para:</p>
            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                <asp:DropDownList ID="alunostransf" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                </asp:DropDownList>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; align-items: center;">
                <asp:TextBox ID="valortransf" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                <asp:Label for="valortransf" runat="server" Text="Valor a transferir" CssClass="mdl-textfield__label"></asp:Label>
            </div>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btntransf" runat="server" Text="Transferir!" CssClass="mdl-button close mdl-color-text--blue" />
            <asp:Button ID="Button1" runat="server" Text="Cancelar" CssClass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <!--modal emprestimo-->
    <dialog class="mdl-dialog" style="width: 60%;" id="modalemprestimo">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Emprestimo</h6>
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
            <asp:Button ID="Button2" runat="server" Text="Emprestar" CssClass="mdl-button close mdl-color-text--blue" />
            <asp:Button ID="Button3" runat="server" Text="Cancelar" CssClass="mdl-button close mdl-color-text--deep-orange" />
        </div>
    </dialog>

    <script>
        document.querySelector('#emprestimo').addEventListener('click', function () {
            document.querySelector('#modalemprestimo').showModal();
        });

        document.querySelector('#transferencia').addEventListener('click', function () {
            document.querySelector('#modaltransferencia').showModal();
        });

        document.querySelector('#cheque').addEventListener('click', function () {
            document.querySelector('#modalcheque').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });
    </script>
</asp:Content>

