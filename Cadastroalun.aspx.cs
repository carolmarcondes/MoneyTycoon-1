using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cadastroalun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     if (!IsPostBack)
        {          //Carregar um DropDownList com o Banco de Dados          
        DataSet ds = SAL_salaDB.SelectAll();
        ddl.DataSource = ds;
        ddl.DataTextField = "SAL_nome"; // Nome da coluna do Banco de dados          
        ddl.DataValueField = "SAL_ID"; // ID da coluna do Banco          
        ddl.DataBind();          
        ddl.Items.Insert(0, "Selecione");         
    } 

    }

    protected void btnfoto_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterClientScriptBlock(GetType(), "ModalFoto", "btnmodal();", true);
    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        SAL_sala sala = new SAL_sala();
        sala.SAL_ID1 = Convert.ToInt32(ddl.SelectedItem.Value);
        ALN_aluno alu = new ALN_aluno();
        alu.SAL_ID1 = sala;
        alu.ALN_nome1 = ALN_nome.Text;
        alu.ALN_idade1 = Convert.ToInt32( ALN_idade.Text);
        alu.ALN_sexo1 = ALN_sexo.SelectedItem.Value;
        alu.ALN_matricula1 = ALN_matricula.Text;

        switch (ALN_alunoDB.Insert(alu))
        {
            case 0:
                confirmacao.Text = "ok";
                break;
            case -2:
                confirmacao.Text = "ZICOU";
                break;
        }

        ALN_nome.Text = "";
        ALN_idade.Text = "";
        ALN_sexo.Text = "";
        ALN_matricula.Text = "";
    }
}