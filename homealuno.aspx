<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="homealuno.aspx.cs" Inherits="homealuno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-grid" style="padding-top: 9%;">
        <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--1-col-tablet mdl-cell--hide-phone"></div>
        <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--6-col-tablet">
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet">
                    <a id="compra" href="#">
                        <img src="Imagens/comprar.png" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--top" for="compra">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet">
                    <a id="leilao" href="#">
                        <img src="Imagens/leilao.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--top" for="leilao">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>

                <div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet">
                    <a id="banco" href="Banco.aspx">
                        <img src="Imagens/banco.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--top" for="banco">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>
            </div>

            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet" style="margin-top: 0px; padding-top: 0px;">
                    <a id="sonho" href="#">
                        <img src="Imagens/sonho.jpg" class="mdl-shadow--2dp mdl-card" style="width: 100%; height: 150px; display: block" />
                        <div class="mdl-tooltip mdl-tooltip--bottom" for="sonho">
                            <img src="Imagens/balao.jpg" style="width: 50px; height: 30px;">
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="mdl-cell mdl-cell--3-col-desktop mdl-cell--6-col-tablet">

            <div class="demo-list-action mdl-list mdl-shadow--2dp" style="margin-top: 5%; width: 100%;">

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
            <br />
                <p style="font-size:large; color: #0D47A1; text-align: center; width: 100%" class="mdl-shadow--2dp">Saldo  <span style="color: #888">D$ 0000,00</span></p>


        </div>
    </div>


</asp:Content>

