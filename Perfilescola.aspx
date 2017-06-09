<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfilescola.aspx.cs" Inherits="Perfilescola" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Dados da Escola</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
        <h5 class="mdl-color-text--indigo mdl-typography--text-center">Meu perfil</h5>
        <div class="mdl-grid">

            <div class="mdl-cell mdl-cell--2-col" style="text-align: center; margin-right: 0px; padding-right: 0px;">
                <!--ID-->
                <div class="mdl-textfield mdl-js-textfield" style="width: 40%; margin-right: 10px;">
                    <asp:TextBox ID="ESC_ID" runat="server" CssClass="mdl-textfield__input" ToolTip="ID automatico" Enabled="False"></asp:TextBox>
                    <asp:Label for="ESC_ID" runat="server" Text="ID (auto)" CssClass="mdl-textfield__label"></asp:Label>
                </div>
                <br />
                <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: auto;" />
                <br>
                <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Foto</button>
            </div>

            <div class="mdl-cell mdl-cell--10-col" style="padding-left: 1%;">

                <div style="width: 100%;">
                    <!--nome-->
                    <asp:Label ID="ESC_nome" runat="server" Text="Nome da escola" Width="100%" Style="padding-: 15px 0px 0px 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                    <!--cnpj-->
                    <asp:Label ID="Label1" runat="server" Text="CNPJ 000.000.000./0000-00" Width="50%" Style="padding-: 15px 0px 0px 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                    <!--ie-->
                    <asp:Label ID="ESC_ie" runat="server" Text="IE 000.000.000" Width="45%" Style="padding-: 15px 0px 0px 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                </div>

                <div style="width: 100%;">
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
                        <asp:DropDownList ID="ESC_uf" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
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
                    <!--email-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                        <asp:TextBox ID="ESC_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email principal da escola" TextMode="Email"></asp:TextBox>
                        <asp:Label for="ESC_email" runat="server" Text="Email" CssClass="mdl-textfield__label"></asp:Label>
                    </div>
                </div>

                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
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

    <script>

        var modalButton1 = document.querySelector('#btnfoto').addEventListener('click', function () {
            document.querySelector('.foto').showModal();
        });

        dialog.querySelector('.close').addEventListener('click', function () {
            dialog.close();
        });

    </script>

</asp:Content>

