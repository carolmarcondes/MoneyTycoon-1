using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cadastroprof : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            //Carregar um DropDownList com o Banco de Dados
            DataSet de = PER_permissoesuserDB.SelectAll();
            ddl2.DataSource = de;
            ddl2.DataTextField = "PER_permissoes"; // Nome da coluna do Banco de dados
            ddl2.DataValueField = "PER_ID"; // ID da coluna do Banco
            ddl2.DataBind();
            ddl2.Items.Insert(0, "Selecione");
        }
    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        {
            ADM_admprof admprof = new ADM_admprof();
            admprof.ADM_nome1 = ADM_nome.Text;
            admprof.ADM_funcao1 = ADM_funcao.Text;
            admprof.ADM_email1 = ADM_email.Text;
            admprof.ADM_matricula1 = ADM_matricula.Text;
            PER_permissoesuser per = new PER_permissoesuser();
            per.PER_ID1 = Convert.ToInt32(ddl2.SelectedItem.Value);
            admprof.PER_ID1 = per;
            ESC_escola esc = new ESC_escola();
            esc.ESC_ID1 = Convert.ToInt32(ddl.SelectedItem.Value);
            admprof.ESC_ID1 = esc;
                // admprof.MAT_ID1.MAT_nome1 = MAT_nome.Text;
            //admprof.SAL_ID1.SAL_nome1 = SAL_nome.Text;
           // admprof.USR_ID1.USR_user1 = USR_user.Text;
           // admprof.USR_ID1.USR_pwd1 = USR_pwd.Text;
            //admprof.ANO_ID1.ANO_ano1 = ANO_ano.Text; //colocar campo na tela

            switch (ADM_admprofDB.Insert(admprof))
            {
                case 0:
                    confirmacao.Text = "ok";
                    break;
                case -2:
                    confirmacao.Text = "ZICOU";
                    break;
            }
            ADM_nome.Text = "";
            ADM_funcao.Text = "";
            ADM_email.Text = "";
            ADM_matricula.Text = "";
            //MAT_nome.Text = "";
            //SAL_nome.Text = "";
            //USR_user.Text = "";
            //USR_pwd.Text = "";
            //ANO_ano.Text = "";

        }

    }


    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddl2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
