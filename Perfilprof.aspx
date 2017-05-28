<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfilprof.aspx.cs" Inherits="Perfilprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Meu perfil</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Meu perfil</h5>
            <div class="mdl-grid">

                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet" style="text-align: center; margin-right: 0px; padding-right: 0px;">
                    <img src="Imagens/profile.jpg" class="mdl-shadow--2dp mdl-card" style="width: 300px; height: 300px; display: block; text-align: center; margin: auto;" />
                    <br>
                    <button id="btnfoto" type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent modal">Foto</button>
                    
                </div>

                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--5-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">

                        <div style="width: 100%;">
                            <!--nome-->
                            <asp:Label ID="ADM_nome" runat="server" Text="Nome do prof" Width="100%" Style="padding-: 15px 0px 0px 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
                        
                            <!--email-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 95%; margin-right: 10px;">
                                <asp:TextBox ID="ADM_email" runat="server" CssClass="mdl-textfield__input" ToolTip="Email do professor" TextMode="Email"></asp:TextBox>
                                <asp:Label for="ADM_email" runat="server" Text="Email" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        
                        </div>

                        <div style="width: 100%;">
                            <!--salas-->
                            <asp:Label ID="SAL_ID" runat="server" Text="Salas e ano" Width="35%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                            <!--materias-->
                            <asp:Label ID="MAT_nome" runat="server" Text="Materias" Width="35%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>

                            <!--matricula-->
                            <asp:Label ID="ALN_matricula" runat="server" Text="Matricula" Width="30%" Style="padding: 15px; color: #888; font-weight: bold; height: 30px;"></asp:Label>
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

        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
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

