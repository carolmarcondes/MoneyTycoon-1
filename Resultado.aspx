<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Resultados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
            <a href="#escola" class="mdl-tabs__tab">Escola</a>
            <a href="#master" class="mdl-tabs__tab">Diretor</a>
            <a href="#sala" class="mdl-tabs__tab">Salas</a>
            <a href="#professor" class="mdl-tabs__tab">Professor</a>
            <a href="#aluno" class="mdl-tabs__tab">Aluno</a>
        </div>

        <div class="mdl-tabs__panel is-active" id="escola">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="text-align: center;">
                    <h5 style="text-align: center; color: #888;">Cadastros encontrados para escola</h5>
                    <br />
                    <br />
                    <asp:Button ID="btnordenarescola" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised" />

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lbldesordenadoescola" runat="server" Text="desordenado"></asp:Label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lblordenadoescola" runat="server" Text="ordenado"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col" style="text-align: center;">
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:DropDownList ID="pesquisaescola" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                    <asp:ListItem>escola1</asp:ListItem>
                                    <asp:ListItem>escola2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnalteraescola" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mdl-tabs__panel is-active" id="master">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="text-align: center;">
                    <h5 style="text-align: center; color: #888;">Cadastros encontrados para Diretor</h5>
                    <br />
                    <br />
                    <asp:Button ID="btnordenamaster" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised" />

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lbldesordenadomaster" runat="server" Text="desordenado"></asp:Label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lblordenadomaster" runat="server" Text="ordenado"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col" style="text-align: center;">
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:DropDownList ID="pesquisamaster" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                    <asp:ListItem>diretor1</asp:ListItem>
                                    <asp:ListItem>diretor2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnalteramaster" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mdl-tabs__panel is-active" id="sala">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="text-align: center;">
                    <h5 style="text-align: center; color: #888;">Cadastros encontrados para Sala</h5>
                    <br />
                    <br />
                    <asp:Button ID="btnordenasala" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised" />

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lbldesordenadosala" runat="server" Text="desordenado"></asp:Label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lblordenadosala" runat="server" Text="ordenado"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col" style="text-align: center;">
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:DropDownList ID="pesquisasala" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                    <asp:ListItem>sala1</asp:ListItem>
                                    <asp:ListItem>sala2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnalterasala" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mdl-tabs__panel is-active" id="professor">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="text-align: center;">
                    <h5 style="text-align: center; color: #888;">Cadastros encontrados para Professor</h5>
                    <br />
                    <br />
                    <asp:Button ID="btnordenaprof" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised" />

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lbldesordenadoprof" runat="server" Text="desordenado"></asp:Label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lblordenadoprof" runat="server" Text="ordenado"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col" style="text-align: center;">
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:DropDownList ID="pesquisaprof" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                    <asp:ListItem>professor1</asp:ListItem>
                                    <asp:ListItem>professor2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnalteraprof" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mdl-tabs__panel is-active" id="aluno">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="text-align: center;">
                    <h5 style="text-align: center; color: #888;">Cadastros encontrados para Alunos</h5>
                    <br />
                    <br />
                    <asp:Button ID="btnordenaaluno" runat="server" Text="Ordenar" CssClass="mdl-button mdl-js-button mdl-button--raised" />

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lbldesordenadoaluno" runat="server" Text="desordenado"></asp:Label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col">
                            <asp:Label ID="lblordenadoaluno" runat="server" Text="ordenado"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col" style="text-align: center;">
                            <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                                <asp:DropDownList ID="pesquisaaluno" runat="server" CssClass="mdl-textfield__input mdl-js-ripple-effect">
                                    <asp:ListItem>aluno1</asp:ListItem>
                                    <asp:ListItem>aluno2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnalteraaluno" runat="server" Text="Alterar" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

