using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cadastrosala : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Carregar um DropDownList com o Banco de Dados
            DataSet ds = ADM_admprofDB.SelectAll();
            ddl.DataSource = ds;
            ddl.DataTextField = "ADM_nome"; // Nome da coluna do Banco de dados
            ddl.DataValueField = "ADM_ID"; // ID da coluna do Banco
            ddl.DataBind();
            ddl.Items.Insert(0, "Selecione");
        }
    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        SAL_sala sala = new SAL_sala();
        sala.SAL_nome1 = SAL_nome.Text;
        ADM_admprof adm = new ADM_admprof();
        adm.ADM_ID1 = Convert.ToInt32(ddl.SelectedItem.Value);
        sala.ADM_ID1 = adm;

        switch (SAL_salaDB.Insert(sala))
        {
            case 0:
                confirmacao.Text = "ok";
                break;
            case -2:
                confirmacao.Text = "ZICOU";
                break;
        }


    }
}