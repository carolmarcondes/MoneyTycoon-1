<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Suporte.aspx.cs" Inherits="Suporte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Suporte</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/tutorial.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue" style="text-shadow: 1px 1px 8px white;">Tutorial</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Video tutorial.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button id="btntutorial" type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color-text--blue">Ver video tutorial</button>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/documentacao.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue" style="text-shadow: 1px 1px 8px white;">Manual</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Veja a documençao completa e manual do usuario.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button id="btnmanual" type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color-text--blue">Ver manual do usuario</button>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/contato.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue" style="text-shadow: 1px 1px 8px white;">Contato</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Envie duvida, reclamacao, sugestao ou elogio para nós.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button id="btncontato" type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color-text--blue">Entrar em contato com a equipe</button>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/treinamento.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue" style="text-shadow: 1px 1px 8px white;">Treinamento</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Formulario para solicitacao de treinamento presencial.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button id="btntreinamento" type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color-text--blue">Solicitar treinamento</button>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/chamados.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue" style="text-shadow: 1px 1px 8px white;">Chamados</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Solicite aqui ajuda tecnica mais especifica.
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <button id="btnchamado" type="button" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color-text--blue">Fazer uma solicitacao de suporte</button>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--4-col">
            <div class="demo-card-square mdl-card mdl-shadow--2dp mdl-color--white">
                <div class="mdl-card__title mdl-card--expand mdl-color--deep-orange" style="background-image: url('Imagens/quattico.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat; height: 150px;">
                    <!--<h2 class="mdl-card__title-text mdl-color-text--blue-800" style="text-shadow: 1px 1px 8px white; font-weight: bolder; background-color: white; width: 100%">Quanttico</h2>-->
                </div>
                <div class="mdl-card__supporting-text">
                    Equipe desenvolvedora do Money Tycoon
                </div>
                <div class="mdl-card__actions mdl-card--border">
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="#">Ir para o site da Quanttico.</a>
                </div>
            </div>
        </div>

    </div>

    <!--modal video-->
    <dialog class="mdl-dialog" id="modaltutorial" style="width: 60%;">
        <div class="mdl-dialog__content">
            <!--Video-->
            <iframe width="854" height="480" src="https://www.youtube.com/embed/BBGEG21CGo0" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btncancela" runat="server" Text="Voltar" CssClass="mdl-button close mdl-color-text--blue" />
        </div>
    </dialog>

    <!--modal manual-->
    <dialog class="mdl-dialog" id="modalmanual" style="width: 60%;">
        <div class="mdl-dialog__content">
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
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button1" runat="server" Text="Voltar" CssClass="mdl-button close mdl-color-text--blue" />
        </div>
    </dialog>

    <!--modal contato-->
    <dialog class="mdl-dialog" id="modalcontato" style="width: 60%;">
        <div class="mdl-dialog__content mdl-typography--text-center">
            <h5 class="mdl-color-text--indigo mdl-typography--text-center">Entre em contato</h5>
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

        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button5" runat="server" Text="Enviar" CssClass="mdl-button close mdl-color-text--deep-orange" />
            <asp:Button ID="Button2" runat="server" Text="Voltar" CssClass="mdl-button close mdl-color-text--blue" />
        </div>
    </dialog>

    <!--modal treinamento-->
    <dialog class="mdl-dialog" id="modaltreinamento" style="width: 60%;">
        <div class="mdl-dialog__content mdl-typography--text-center">
            <h5 class="mdl-color-text--indigo mdl-typography--text-center">Solicitacao de treinamento</h5>
            <!--nome-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="TRN_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo"></asp:TextBox>
                <asp:Label for="TRN_nome" runat="server" Text="Seu Nome" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só letras</span>
            </div>

            <!--email-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="TRN_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email" TextMode="Email"></asp:TextBox>
                <asp:Label for="TRN_email" runat="server" Text="Digite um email para que possamos retornar" CssClass="mdl-textfield__label"></asp:Label>
            </div>

            <!--telefone-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="TRN_telefone" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno" TextMode="Phone"></asp:TextBox>
                <asp:Label for="TRN_telefone" runat="server" Text="Digite seu telefone ou celular" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só numeros</span>
            </div>

            <!--dificuldade-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="TRN_dificuldade" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno" TextMode="Phone"></asp:TextBox>
                <asp:Label for="TRN_dificuldade" runat="server" Text="Digite aqui a maior dificuldade que esta encontrando" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só numeros</span>
            </div>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button3" runat="server" Text="Enivar" CssClass="mdl-button close mdl-color-text--deep-orange" />
            <asp:Button ID="Button4" runat="server" Text="Voltar" CssClass="mdl-button close mdl-color-text--blue" />
        </div>
    </dialog>

        <!--modal chamados-->
    <dialog class="mdl-dialog" id="modalchamado" style="width: 60%;">
        <div class="mdl-dialog__content mdl-typography--text-center">
            <h5 class="mdl-color-text--indigo mdl-typography--text-center">Solicitacao de suporte tecnico</h5>
            <!--nome-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="CHA_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo"></asp:TextBox>
                <asp:Label for="CHA_nome" runat="server" Text="Seu Nome" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só letras</span>
            </div>

            <!--email-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="CHA_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email" TextMode="Email"></asp:TextBox>
                <asp:Label for="CHA_email" runat="server" Text="Digite um email para que possamos retornar" CssClass="mdl-textfield__label"></asp:Label>
            </div>

            <!--telefone-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="CHA_telefone" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno" TextMode="Phone"></asp:TextBox>
                <asp:Label for="CHA_telefone" runat="server" Text="Digite seu telefone ou celular" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só numeros</span>
            </div>

            <!--dificuldade-->
            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                <asp:TextBox ID="CHA_problema" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno"></asp:TextBox>
                <asp:Label for="CHA_problema" runat="server" Text="Digite aqui qual o problema que esta enfrentando" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só numeros</span>
            </div>
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button6" runat="server" Text="Enivar" CssClass="mdl-button close mdl-color-text--deep-orange" />
            <asp:Button ID="Button7" runat="server" Text="Voltar" CssClass="mdl-button close mdl-color-text--blue" />
        </div>
    </dialog>

    <script>

        document.querySelector('#btntutorial').addEventListener('click', function () {
            document.querySelector('#modaltutorial').showModal();
        });

        document.querySelector('#btnmanual').addEventListener('click', function () {
            document.querySelector('#modalmanual').showModal();
        });

        document.querySelector('#btncontato').addEventListener('click', function () {
            document.querySelector('#modalcontato').showModal();
        });

        document.querySelector('#btntreinamento').addEventListener('click', function () {
            document.querySelector('#modaltreinamento').showModal();
        });

        document.querySelector('#btnchamado').addEventListener('click', function () {
            document.querySelector('#modalchamado').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

    </script>

</asp:Content>

