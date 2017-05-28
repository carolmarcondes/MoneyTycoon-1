<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastroproduto.aspx.cs" Inherits="Cadastroproduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Cadastro de produto</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Cadastro de produto</h5>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--5-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">

                        <div style="width: 100%;">
                            <!--nome-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:TextBox ID="PDT_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Nome do produto"></asp:TextBox>
                                <asp:Label for="PDT_nome" runat="server" Text="Nome" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras</span>
                            </div>

                        </div>

                        <div style="width: 100%; text-align: center;">
                            <!--unidade - dropdown-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 10%;">
                                <asp:DropDownList ID="PDT_unidade" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                                    <asp:ListItem>UN</asp:ListItem>
                                    <asp:ListItem>CJ</asp:ListItem>
                                    <asp:ListItem>PR</asp:ListItem>
                                    <asp:ListItem>PÇ</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <!--preço-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-left: 15%;">
                                <asp:TextBox ID="PDT_preco" runat="server" CssClass="mdl-textfield__input" ToolTip="Preço"></asp:TextBox>
                                <asp:Label for="PDT_preco" runat="server" Text="D$ 00,00" CssClass="mdl-textfield__label"></asp:Label>
                                <span class="mdl-textfield__error">Só letras</span>
                            </div>

                            <!--status - slider-->
                            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="PDT_status" style="max-width: 10%; color: #888; margin-left: 15%;">
                                <input type="checkbox" id="PDT_status" class="mdl-switch__input" checked>
                                <span class="mdl-switch__label">Ativo</span>
                            </label>

                        </div>

                        <div style="width: 100%; text-align: center;">
                            <!--setor - dropdown-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-right: 10px;">
                                <asp:DropDownList ID="SRT_nome2" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Setor">
                                    <asp:ListItem>Carro</asp:ListItem>
                                    <asp:ListItem>Casa</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <button id="btnsetor" type="button" class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="margin-right: 10px;">
                                <i class="material-icons">add</i>
                            </button>

                            <!--subsetor - dropdown-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 30%;">
                                <asp:DropDownList ID="SST_nome2" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Sub setor">
                                    <asp:ListItem>Motor</asp:ListItem>
                                    <asp:ListItem>Acessorios</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <button id="btnsubsetor" type="button" class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="margin-right: 10px;">
                                <i class="material-icons">add</i>
                            </button>
                        </div>

                        <div style="width: 100%;">

                            <!--descricao-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:TextBox ID="PDT_descricao" runat="server" CssClass="mdl-textfield__input" TextMode="MultiLine"></asp:TextBox>
                                <asp:Label for="PDT_descricao" runat="server" Text="Descrição do produto" CssClass="mdl-textfield__label"></asp:Label>
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
                </div>

                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet" style="text-align: center; margin-right: 0px; padding-right: 0px;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 300px; height: 300px; display: block; text-align: center; margin: auto;" />
                    <br>
                    <br>
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Foto</button>
                </div>
            </div>

        </div>

        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

    <!--modal foto-->
    <dialog class="mdl-dialog foto" id="modalfoto" style="width: 30%;">
        <div class="mdl-dialog__content">
            <p>
                Escolha a foto de perfil
            </p>
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button2" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <!--modal setor-->
    <dialog class="mdl-dialog" style="width: 40%;" id="modalsetor">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Cadastro de setor</h6>
            <br />
            <div class="mdl-textfield mdl-js-textfield" style="width: 80%; text-align: center;">
                <asp:TextBox ID="SRT_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Setor"></asp:TextBox>
                <asp:Label for="SRT_nome" runat="server" Text="Setor" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só letras</span>
            </div>
            <asp:Label ID="RSP_nome" runat="server" Text="Setores já cadastrados" Width="100%" Style="color: #888;"></asp:Label>
            <br />
            <br />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="btncartaosalva" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <!--modal subsetor-->
    <dialog class="mdl-dialog" style="width: 40%;" id="modalsubsetor">
        <div class="mdl-dialog__content">
            <h6 style="color: #0D47A1; text-align: center;">Cadastro de sub setor</h6>
            <br />
            <!--setor - dropdown-->
            <p>Selecione o setor para cadastrar o subsetor dele</p>
            <div class="mdl-textfield mdl-js-textfield" style="width: 30%; margin-right: 10px;">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Setor">
                    <asp:ListItem>Carro</asp:ListItem>
                    <asp:ListItem>Casa</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="mdl-textfield mdl-js-textfield" style="width: 80%; text-align: center;">
                <asp:TextBox ID="SST_nome" runat="server" CssClass="mdl-textfield__input" ToolTip="Sub-Setor"></asp:TextBox>
                <asp:Label for="SST_nome" runat="server" Text="SubSetor" CssClass="mdl-textfield__label"></asp:Label>
                <span class="mdl-textfield__error">Só letras</span>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Subsetores já cadastrados" Width="100%" Style="color: #888;"></asp:Label>
            <br />
            <br />
        </div>
        <div class="mdl-dialog__actions mdl-dialog__actions--full-width">
            <asp:Button ID="Button1" runat="server" Text="Pronto!" CssClass="mdl-button close" />
        </div>
    </dialog>

    <script>

        var modalButton = document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        var modalButton1 = document.querySelector('#btnsetor').addEventListener('click', function () {
            document.querySelector('#modalsetor').showModal();
        });

        var modalButton2 = document.querySelector('#btnsubsetor').addEventListener('click', function () {
            document.querySelector('#modalsubsetor').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

    </script>
</asp:Content>

