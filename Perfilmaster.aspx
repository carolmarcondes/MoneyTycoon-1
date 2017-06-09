<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfilmaster.aspx.cs" Inherits="Perfilmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Meu perfil</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">
            <h5 class="mdl-color-text--indigo mdl-typography--text-center">Meu perfil</h5>
            <div class="mdl-grid">

                <div class="mdl-cell mdl-cell--4-col" style="padding-right: 20px; padding-left: 5px; text-align: center;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: auto;" />
                    <br>
                    <br>
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">Foto</button>
                </div>

                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--5-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">

                        <div style="width: 100%;">
                            <!--nome-->
                            <asp:Label ID="RSP_nome" runat="server" Text="Nome do responsavel" Width="100%" Style="padding-: 15px 0px 0px 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                        
                            <!--email-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email do responsavel" TextMode="Email"></asp:TextBox>
                                <asp:Label for="RSP_email" runat="server" Text="Email" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        
                        </div>

                        <div style="width: 100%;">
                            <!--cargo-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_cargo" runat="server" CssClass="mdl-textfield__input" ToolTip="Cargo do responsavel" TextMode="SingleLine"></asp:TextBox>
                                <asp:Label for="RSP_cargo" runat="server" Text="Cargo" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>

                        <div style="width: 100%;">
                            <!--telefone-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 35%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_telefone" runat="server" CssClass="mdl-textfield__input" ToolTip="Telefone" TextMode="Phone"></asp:TextBox>
                                <asp:Label for="RSP_telefone" runat="server" Text="(xx) 00000-00000" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                            <!--horario-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 60%; margin-right: 10px;">
                                <asp:TextBox ID="RSP_horario" runat="server" CssClass="mdl-textfield__input" ToolTip="Horario para contato" TextMode="SingleLine"></asp:TextBox>
                                <asp:Label for="RSP_horario" runat="server" Text="Horario de contato" CssClass="mdl-textfield__label"></asp:Label>
                            </div>

                        </div>

                        <div style="width: 100%;">
                            <!--usuario-->
                            <asp:Label ID="USD_user" runat="server" Text="Usuario" Width="30%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                            <!--botao altera senha-->
                            <asp:Button ID="btnsenha" runat="server" Text="Troca senha" CssClass="mdl-button mdl-js-button mdl-button--raised" />
                        </div>

                        <!--barra de botoes de acao-->
                        <div style="text-align: center; width: 100%; margin-top: 5%">
                            <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                            <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                        </div>
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

        <script>
            
            var modalButton = document.querySelector('#btnfoto').addEventListener('click', function () {
                document.querySelector('#modalfoto').showModal();
            });
            
            dialog.querySelector('.close').addEventListener('click', function () {
                dialog.close();
            });

        </script>

</asp:Content>

