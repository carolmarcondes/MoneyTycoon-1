<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="homeprof.aspx.cs" Inherits="homeprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 9%;">
        <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--1-col-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet" style="margin-right: 0px; padding-right: 0px;">
                    <div class="mdl-grid">
                        <a id="cax" href="#">
                            <img src="Imagens/caixa.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 315px; display: block" />
                            <div class="mdl-tooltip mdl-tooltip--left" for="cax">
                                <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                            </div>
                        </a>
                    </div>
                </div>

                <div class="mdl-cell mdl-cell--8-col-desktop mdl-cell--5-col-tablet" style="padding: 0px;">
                    <div class="mdl-grid" style="margin-top: 0px; padding: 0px; margin-left: 0px;">
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
                            <a id="conslt" href="Addcredito.aspx">
                                <img src="Imagens/credito.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                                <div class="mdl-tooltip mdl-tooltip--right" for="conslt">
                                    <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--6-col-tablet">

            <div class="demo-list-action mdl-list mdl-shadow--2dp" style="margin-top: 10%; width: 100%;">

                <h6 style="color: #0D47A1; text-align: center; margin-top: 10px;">Ranking</h6>

                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Bryan Cranston</span>
                    </span>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Aaron Paul</span>
                    </span>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Bob Odenkirk</span>
                    </span>
                    <span>
                        <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                        <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    </span>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

