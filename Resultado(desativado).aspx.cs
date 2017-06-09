using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;

public partial class Resultado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Carregar um DropDownList com o Banco de Dados
            DataSet ds = ESC_escolaDB.SelectAll();
            ddl.DataSource = ds;
            ddl.DataTextField = "ESC_nome"; // Nome da coluna do Banco de dados
            ddl.DataValueField = "ESC_ID"; // ID da coluna do Banco
            ddl.DataBind();
            ddl.Items.Insert(0, "Selecione");
        }
        carregarLabel();
    }
    public void carregarLabel()
    {

        DataSet ds = ESC_escolaDB.SelectAll();
        lbl.Text = "";
        ordenacao.Text = "";
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            lbl.Text += "<br /><div class='alert-danger alert' style='width:100%;'> ID: " + dr["ESC_ID"];
            lbl.Text += "<br /> nome: " + dr["ESC_nome"] + "</div>";

        }


    }

    protected void btnordenarescola_Click(object sender, EventArgs e)
    {
        DataSet id = Class1.SelectAId();
        foreach (DataRow di in id.Tables[0].Rows)
        {
            ordenacao.Text += "<br /><div class='alert-danger alert' style='width:100%;'> ID: " + di["ESC_ID"] + "<br /> nome: " + di["ESC_nome"] + "</div>";
        }
    }

    protected void btnalteraescola_Click(object sender, EventArgs e)
    {
        Server.Transfer("Cadastroescola.aspx");
        
        
    }
}