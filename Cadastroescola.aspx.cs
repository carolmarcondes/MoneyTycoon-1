using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;

public partial class Cadastroescola : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
       // carregarLabel();
    }
   
    /*public void carregarLabel()
    {
        DataSet id = Class1.SelectAId();
        DataSet ds = ESC_escolaDB.SelectAll();
        lbl.Text = "";
        ordenacao.Text = "";
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            lbl.Text += "<br /><div class='alert-danger alert' style='width:100%;'> ID: " + dr["ESC_ID"];
            lbl.Text += "<br /> nome: " + dr["ESC_nome"] + "</div>";

        }

        try
        {
            foreach (DataRow di in id.Tables[0].Rows)
            {
                ordenacao.Text += "<br /><div class='alert-danger alert' style='width:100%;'> ID: " + di["ESC_ID"] + "<br /> nome: " + di["ESC_nome"] + "</div>";
            }
        }
        catch (Exception e)
        {
            Debug.WriteLine(e.Message);
        }



}*/

    protected void btnsalvar_Click1(object sender, EventArgs e)
    {
        ESC_escola escola = new ESC_escola();
        escola.ESC_nome1 = ESC_nome.Text;
        escola.ESC_endereco1 = ESC_endereco.Text;
        escola.ESC_numend1 = ESC_numend.Text;
        escola.ESC_bairro1 = ESC_bairro.Text;
        escola.ESC_cidade1 = ESC_cidade.Text;
        escola.ESC_estado1 = ESC_estado.Text;
        escola.ESC_cnpj1 = ESC_cnpj.Text;
        escola.ESC_ie1 = ESC_ie.Text;
        escola.ESC_tel1 = ESC_tel.Text;
        escola.ESC_email1 = ESC_email.Text;
        escola.ESC_cep1 = ESC_cep.Text;
        //escola.ESC_status1 = ESC_status.Text;

        /*switch (ESC_escolaDB.Insert(escola))
        {
            case 0:
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "ok", "<script type=\"text/javascript\"> document.querySelector('#demo-show-toast').MaterialSnackbar.showSnackbar({message: 'belezinha'});</script>", false);
                break;
            case -2:
                confirmacao.Text = "sa porra só da merda";
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "fodeu de novo", "snackbarerror()", false);
                break;
        }*/

        //lblJavaScript.Text = "<script>snackbarconfirm();</script>";   <-- tb da pra acionar assim

        switch (ESC_escolaDB.Insert(escola))
        {
            case 0:
                confirmacao.Text = "ok";
                break;
            case -2:
                confirmacao.Text = "ZICOU";
                break;
        }

        ESC_nome.Text = "";
        ESC_endereco.Text = "";
        ESC_numend.Text = "";
        ESC_bairro.Text = "";
        ESC_cidade.Text = "";
        ESC_estado.Text = "";
        ESC_cnpj.Text = "";
        ESC_ie.Text = "";
        ESC_tel.Text = "";
        ESC_email.Text = "";
        ESC_cep.Text = "";
    }
}