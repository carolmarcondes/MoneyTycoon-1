<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Cadastroalun.aspx.cs" Inherits="Cadastroalun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro aluno</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-color--white mdl-shadow--2dp demo-charts">
            <h5 style="text-align: center; color: #888;">Cadastro de aluno</h5>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--9-col-desktop mdl-cell--8-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 10px;">
                        <div style="width: 100%;">
                            <!--nome-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 70%; margin-right: 10px;">
                                <asp:TextBox ID="ALN_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo do aluno" MaxLength="45"></asp:TextBox>
                                <asp:Label for="ALN_nome" runat="server" Text="Nome" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras</span>
                            </div>

                            <!--data nascimento--><!--voltar para date para o pi-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%">
                                <asp:TextBox ID="ALN_nasc" runat="server" CssClass="mdl-textfield__input" ToolTip="Idade do aluno" TextMode="Number" MaxLength="2"></asp:TextBox>
                                <asp:Label for="ALN_nasc" runat="server" Text="Idade" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só numero</span>
                            </div>

                        </div>

                        <div style="width: 100%;">
                            <!--sexo - radio button--><!--
                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="ALN_sexo" style="margin-right: 40px;">
                                <input type="radio" id="ALN_sexo" class="mdl-radio__button" name="options" value="M">
                                <span class="mdl-radio__label" style="color: #888;">Masculino</span>
                            </label>
                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="ALN_sexoF">
                                <input type="radio" id="ALN_sexoF" class="mdl-radio__button" name="options" value="F">
                                <span class="mdl-radio__label" style="color: #888;">Feminino</span>
                            </label>-->

                                <!--sexo em dropdown-->
                                <div class="mdl-textfield mdl-js-textfield" style="width: 30%;">
                                    <asp:DropDownList ID="ALN_sexo" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                        <asp:ListItem>Masculino</asp:ListItem>
                                        <asp:ListItem>Feminino</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                        <!--</div>

                        <div style="width: 100%;">-->

                            <!--matricula-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 50%; margin-right: 10px;">
                                <asp:TextBox ID="ALN_matricula" runat="server" CssClass="mdl-textfield__input" MaxLength="20"></asp:TextBox>
                                <asp:Label for="ALN_matricula" runat="server" Text="Matricula" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--sala - dropdown-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-right: 10px;">
                                <asp:DropDownList ID="SAL_ID" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                                    <asp:ListItem>7o. A</asp:ListItem>
                                    <asp:ListItem>7o. B</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            </div>
                            <!--remover pro pi-->
                                <div class="mdl-textfield mdl-js-textfield" style="width: 55%;">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                        <asp:ListItem>escola1</asp:ListItem>
                                        <asp:ListItem>escola2</asp:ListItem>
                                        <asp:ListItem>escola3</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-left: 5%; margin-right: 10px;">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                        <asp:ListItem>professor</asp:ListItem>
                                        <asp:ListItem>diretor</asp:ListItem>
                                        <asp:ListItem>aluno</asp:ListItem>
                                    </asp:DropDownList>

                        </div>
                        <!--
                        <div style="width: 100%;">

                            <!--usuario->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="USR_user" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:Label for="USR_user" runat="server" Text="Usuario" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras e números!</span>
                            </div>

                            <!--codigo do cartao->
                            <asp:Label ID="ALN_card" runat="server" Text="Codigo cartão" Width="40%" Style="margin-right: 10px; color: #888; font-weight: bold; text-align: center;"></asp:Label>

                            <!--botao altera cartao->
                            <button id="btncartao" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal" value="0">Alterar cartão</button>

                        </div>-->
                        <!--
                        <div style="width: 100%;">

                            <!--senha               ver validacao de senha->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 25%; margin-right: 10px;">
                                <asp:TextBox ID="USR_senha" runat="server" CssClass="mdl-textfield__input" TextMode="Password"></asp:TextBox>
                                <asp:Label for="USR_senha" runat="server" Text="senha" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">ver a validacao de senha</span>
                            </div>

                            <!--status - slider->
                            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="ALN_status" style="max-width: 70%; color: #888;">
                                <input type="checkbox" id="ALN_status" class="mdl-switch__input" checked>
                                <span class="mdl-switch__label">Ativo</span>
                            </label>

                        </div>-->

                        <!--barra de botoes de acao-->
                        <div style="text-align: center; width: 100%; margin-top: 5%">
                            <asp:Button ID="btnsalvar" runat="server" Text="Salvar novo" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                            <asp:Button ID="btnalterar" runat="server" Text="Atualizar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <!--<asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <button id="btnconsulta" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Pesquisar</button>-->
                        </div>
                    </div>
                </div>

                <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet" style="padding-right: 20px; padding-left: 5px; text-align: center;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: auto;" />
                    <br />
                    <br />
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Foto</button>
                </div>
            </div>

        </div>

        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

    <!--modal arduino-->
    <dialog class="mdl-dialog arduino" style="width: 60%;" id="lecartao">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Leitura do cartão</h6>
            <p>Passe o cartão na leitora para obter o numero</p>
            <br />
            <br />
            <!--codigo do cartao-->
            <asp:Label ID="Label1" runat="server" Text="Codigo cartão" Width="40%" Style="margin-right: 10px; color: #888; font-weight: bold; text-align: center;"></asp:Label>
            <br />
            <br />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btnmodal1" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <!--modal foto-->
    <dialog class="mdl-dialog foto" id="modalfoto" style="width: 30%;">
        <div class="mdl-dialog__content">
            <p>
                Escolha a foto de perfil
            </p>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button1" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <!--modal consulta-->
    <dialog class="mdl-dialog pesquisa" style="width: 60%;" id="pesquisa">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Alunos cadastradas</h6>
            <br />
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--6-col">
                    <br />
                    <asp:Label ID="desordenado" runat="server" Text="lista desordenada"></asp:Label>
                    <br />
                </div>
                <div class="mdl-cell mdl-cell--6-col">
                    <br />
                    <asp:Label ID="ordenado" runat="server" Text="lista ordenada"></asp:Label>
                    <br />
                </div>
            </div>
            <asp:Button ID="btnordenar" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btnfecha" runat="server" Text="Cadastrar novo" CssClass="mdl-button close" />
        </div>
    </dialog>


    <script>

        document.querySelector('#btncartao').addEventListener('click', function () {
            document.querySelector('.arduino').showModal();
        });


        document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

    </script>

</asp:Content>
