using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cadastromaster : System.Web.UI.Page
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


        /*USR_tipousuario user = new USR_tipousuario();
        user.USR_descricao1 = RSP_cargo.Text;
        user.USR_pwd1 = USR_pwd.Text;
        user.USR_user1 = USR_user.Text;*/
        RSP_responsavel responsavel = new RSP_responsavel();
        PER_permissoesuser per = new PER_permissoesuser();
        per.PER_ID1 = Convert.ToInt32(ddl2.SelectedItem.Value);
        responsavel.PER_ID1 = per;

        
       
        
        responsavel.RSP_nome1 = RSP_nome.Text;
        responsavel.RSP_email1 = RSP_email.Text;
        responsavel.RSP_cargo1 = RSP_cargo.Text;
        responsavel.RSP_tel1 = RSP_tel.Text;
        responsavel.RSP_matricula1 = RSP_matricula.Text;
        responsavel.RSP_horario1 = RSP_horario.Text;

        ESC_escola esc = new ESC_escola();
        esc.ESC_ID1 = Convert.ToInt32(ddl.SelectedValue);
        responsavel.ESC_ID1 = esc;
        



        switch (RSP_responsavelDB.Insert(responsavel))
        {
            case 0:
                confirmacao.Text = "ok";
                break;
            case -2:
                confirmacao.Text = "ZICOU";
                break;
        }
        RSP_nome.Text = "";
        RSP_email.Text = "";
        RSP_cargo.Text = "";
        RSP_tel.Text = "";
        USR_user.Text = "";
        USR_pwd.Text = "";
        RSP_matricula.Text = "";
        RSP_horario.Text = "";


    }
    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}