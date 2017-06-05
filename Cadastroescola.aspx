<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Cadastroescola.aspx.cs" Inherits="Cadastroescola" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro escola</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--12-col-tablet mdl-color--white mdl-shadow--2dp demo-charts">
            <h5 style="text-align: center; color: #888;">Cadastro de escola</h5>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet" style="padding-left: 20px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">

                        <div style="width: 100%;">
                            <!--ID-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_ID" runat="server" CssClass="mdl-textfield__input" ToolTip="ID automatico" Enabled="False"></asp:TextBox>
                                <asp:Label for="ESC_ID" runat="server" Text="ID (auto)" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--status - slider-->
                            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="ESC_status" style="max-width: 30%; color: #888; margin-right: 5px;">
                                <input type="checkbox" id="ESC_status" class="mdl-switch__input" checked>
                                <span class="mdl-switch__label">Ativo</span>
                            </label>
                        </div>

                        <div style="width: 100%;">
                            <!--nome-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome completo da escola"></asp:TextBox>
                                <asp:Label for="ESC_nome" runat="server" Text="Nome" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <div style="width: 100%;">
                            <!--endereço-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 80%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_endereco" runat="server" CssClass="mdl-textfield__input" ToolTip="Endereço sem o numero"></asp:TextBox>
                                <asp:Label for="ESC_endereco" runat="server" Text="Endereço" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--numero endereço-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 15%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_numend" runat="server" CssClass="mdl-textfield__input" ToolTip="Numero do endereço"></asp:TextBox>
                                <asp:Label for="ESC_numend" runat="server" Text="Numero" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <div style="width: 100%;">
                            <!--bairro-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 40%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_bairro" runat="server" CssClass="mdl-textfield__input" ToolTip="Bairro da escola"></asp:TextBox>
                                <asp:Label for="ESC_bairro" runat="server" Text="Bairro" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--cidade-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 40%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_cidade" runat="server" CssClass="mdl-textfield__input" ToolTip="Cidade da escola"></asp:TextBox>
                                <asp:Label for="ESC_cidade" runat="server" Text="Cidade" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--estado - dropdown-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-right: 10px;">
                                <asp:DropDownList ID="ESC_estado" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                                    <asp:ListItem>SP</asp:ListItem>
                                    <asp:ListItem>RJ</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div style="width: 100%;">
                            <!--cep-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_cep" runat="server" CssClass="mdl-textfield__input" ToolTip="CEP do endereço" TextMode="Number"></asp:TextBox>
                                <asp:Label for="ESC_cep" runat="server" Text="CEP 00000-000" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só numeros</span>
                            </div>

                            <!--telefone-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_tel" runat="server" CssClass="mdl-textfield__input" ToolTip="Telefone principal da escola" TextMode="Phone" MaxLength="10" EnableViewState="True"></asp:TextBox>
                                <asp:Label for="ESC_tel" runat="server" Text="Telefone" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só numeros</span>
                            </div>
                        </div>

                        <div style="width: 100%;">
                            <!--cnpj-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 45%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_cnpj" runat="server" CssClass="mdl-textfield__input" ToolTip="CNPJ da escola" TextMode="Number"></asp:TextBox>
                                <asp:Label for="ESC_cnpj" runat="server" Text="CNPJ 000.000.000./0000-00" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só numeros</span>
                            </div>

                            <!--ie-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 45%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_ie" runat="server" CssClass="mdl-textfield__input" ToolTip="Inscrição Estadual da escola" TextMode="Number"></asp:TextBox>
                                <asp:Label for="ESC_ie" runat="server" Text="IE 000.000.000" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só numeros</span>
                            </div>
                        </div>

                        <div style="width: 100%;">
                            <!--email-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                                <asp:TextBox ID="ESC_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email principal da escola" TextMode="Email"></asp:TextBox>
                                <asp:Label for="ESC_email" runat="server" Text="Email" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <!--botoes de contrato e master-->
                        <div style="text-align: center; width: 100%; margin-top: 2%">
                            <a href="#" class="mdl-button mdl-js-button mdl-button--raised">Adicionar contrato</a>
                            <a href="Cadastromaster.aspx" class="mdl-button mdl-js-button mdl-button--raised">Cadastrar responsavel</a>
                        </div>

                        <!--barra de botoes de acao-->
                        <div style="text-align: center; width: 100%; margin-top: 5%">
                            <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" OnClick="btnsalvar_Click1" />
                            <asp:Button ID="btnalterar" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <asp:Button ID="btnexcluir" runat="server" Text="Excluir" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                            <button id="btnconsulta" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Pesquisar</button>
                        </div>

                        <!--label confirmação-->
                        <div>
                            <asp:Label ID="confirmacao" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet" style="text-align: center; margin-right: 0px; padding-right: 0px; margin-top: 10%;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 200px; height: 200px; display: block; text-align: center; margin: auto;" />
                    <br />
                    <br />
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Foto</button>
                </div>
            </div>

        </div>
    </div>
    </div>

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
            <h6 style="color: #0D47A1; text-align: center;">Salas cadastradas</h6>
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

        document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

        document.querySelector('#btnconsulta').addEventListener('click', function () {
            document.querySelector('.pesquisa').showModal();
        });

        function snackbarconfirm() {
            document.querySelector('#demo-show-toast').MaterialSnackbar.showSnackbar({ message: 'Cadastro feito com sucesso!' });
        }
        function snackbarerror() {
            document.querySelector('#demo-show-toast').MaterialSnackbar.showSnackbar({ message: 'Deu algum probleminha, tente de novo!' });
        }

    </script>

    <div id="demo-toast-example" class="mdl-js-snackbar mdl-snackbar">
        <div class="mdl-snackbar__text"></div>
        <button class="mdl-snackbar__action" type="button"></button>
    </div>

</asp:Content>

