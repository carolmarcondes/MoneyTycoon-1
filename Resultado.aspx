<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Resultados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="mdl-grid">
        <div class="mdl-cell mdl-cell--12-col mdl-color--white mdl-shadow--2dp demo-charts" style="width: 100%">
            <h5 style="text-align: center; color: #888;">Cadastros encontrados</h5>
            <div class="mdl-grid mdl-cell mdl-cell--12-col">

                <div style="width: 100%;">
                    <asp:Label ID="lblresultado" runat="server" Text="Label"></asp:Label>

                </div>
            </div>
        </div>
    </div>

</asp:Content>

