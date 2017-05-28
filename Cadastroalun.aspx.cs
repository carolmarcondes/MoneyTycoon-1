using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastroalun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    /* if (!IsPostBack)
        {          //Carregar um DropDownList com o Banco de Dados          
        DataSet ds = SAL_salaDB.SelectAll();
        ddl.DataSource = ds;
        ddl.DataTextField = "SAL_nome"; // Nome da coluna do Banco de dados          
        ddl.DataValueField = "SAL_ID"; // ID da coluna do Banco          
        ddl.DataBind();          
        ddl.Items.Insert(0, "Selecione");         
    } */

    }

    protected void btnfoto_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterClientScriptBlock(GetType(), "ModalFoto", "btnmodal();", true);
    }
}