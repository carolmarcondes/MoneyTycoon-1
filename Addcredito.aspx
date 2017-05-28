<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addcredito.aspx.cs" Inherits="Addcredito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Adicionar creditos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 75px;">
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--10-col-desktop mdl-cell--8-col-tablet fwhite">
            <h5 style="text-align: center; color: #888;">Adicionar creditos</h5>
            <div class="mdl-grid">

                <div style="width: 100%; text-align: center;">
                    <div style="font-size: smaller;">
                        <a href="Estorno.aspx" class="mdl-button mdl-js-button mdl-button--raised">Estorno</a>
                    </div>
                    <!--Tarefas-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 30%;">
                        <asp:DropDownList ID="ATV_nome" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                            <asp:ListItem>Presença</asp:ListItem>
                            <asp:ListItem>Trabalho em grupo</asp:ListItem>
                            <asp:ListItem>Tarefa de casa</asp:ListItem>
                            <asp:ListItem>Comportamento em sala de aula</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!--Sala-->
                    <div class="mdl-textfield mdl-js-textfield" style="width: 10%; margin-left: 5%;">
                        <asp:DropDownList ID="PDT_unidade" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect" ToolTip="Estado">
                            <asp:ListItem>7ºA</asp:ListItem>
                            <asp:ListItem>7ºB</asp:ListItem>
                            <asp:ListItem>7ºC</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div style="width: 100%; text-align: center;">
                    <div class="demo-list-action mdl-list" style="width: 40%; margin-left: 30%;">
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="MBC_entrada" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox14" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bryan Cranston</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox15" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Aaron Paul</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox16" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                        <div class="mdl-list__item">
                            <span class="mdl-list__item-primary-content">
                                <i class="material-icons mdl-list__item-avatar">person</i>
                                <span>Bob Odenkirk</span>
                            </span>
                            <!--valor-->
                            <div class="mdl-textfield mdl-js-textfield" style="width: 20%; margin-right: 10px;">
                                <asp:TextBox ID="TextBox17" runat="server" CssClass="mdl-textfield__input" TextMode="Number" ToolTip="Valor entre 0 e 100"></asp:TextBox>
                                <asp:Label for="MBC_entrada" runat="server" Text="Valor" CssClass="mdl-textfield__label"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--barra de botoes de acao-->
                <div style="text-align: center; width: 100%; margin-top: 5%">
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                    <asp:Button ID="btncancelar" runat="server" Text="Cancelar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--primary" />
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--1-col-desktop mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
    </div>

</asp:Content>

