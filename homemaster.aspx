<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="homemaster.aspx.cs" Inherits="homemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 10%;">
        <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--1-col-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--middle">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet">
                    <a id="relat" href="#">
                        <img src="Imagens/relatorio.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--top" for="relat">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

                <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet">
                    <a id="cadat" href="Cadastroalun.aspx">
                        <img src="Imagens/professor.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--right" for="cadat">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

                <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet">
                    <a id="finan" href="#">
                        <img src="Imagens/financeiro.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--bottom" for="finan">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

                <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet">
                    <a id="conslt" href="Cadastrosala.aspx">
                        <img src="Imagens/sala.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--right" for="conslt">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

            </div>

        </div>
        <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--1-col-tablet mdl-cell--hide-phone"></div>
    </div>

</asp:Content>

