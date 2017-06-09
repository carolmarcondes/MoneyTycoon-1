<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Ranking.aspx.vb" Inherits="MoneyTycoon_Ranking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ranking</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp">

        <h5 style="text-align: center;" class="mdl-color-text--blue-900">Ranking</h5>

        <div class="mdl-cell  mdl-cell--10-col" style="text-align:center; margin:auto;"><!--fazer o aluno com card vai fica melior, tipo o innerjoin-->
            <div class="demo-list-action mdl-list" style="width: 100%;">
                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Bryan Cranston</span>
                    </span>
                    <span class="mdl-layout-spacer"></span>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
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
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Bob Odenkirk</span>
                    </span>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
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
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
                <div class="mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-avatar">person</i>
                        <span>Bob Odenkirk</span>
                    </span>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                    <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                </div>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bryan Cranston</span>
                </span>
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
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bryan Cranston</span>
                </span>
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
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bob Odenkirk</span>
                </span>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bryan Cranston</span>
                </span>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Aaron Paul</span>
                </span>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bob Odenkirk</span>
                </span>
                <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bryan Cranston</span>
                </span>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Aaron Paul</span>
                </span>
            </div>
            <div class="mdl-list__item">
                <span class="mdl-list__item-primary-content">
                    <i class="material-icons mdl-list__item-avatar">person</i>
                    <span>Bob Odenkirk</span>
                </span>
            </div>
        </div>
    </div>

</asp:Content>

