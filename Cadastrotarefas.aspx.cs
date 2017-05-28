using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastrotarefas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        ATV_atividade atividade = new ATV_atividade();
        atividade.ATV_descricao1 = ATV_descricao.Text;
        atividade.ATV_valormax1 = Convert.ToInt32(ATV_valormax.Text);
        atividade.ATV_valormin1 = Convert.ToInt32(ATV_valormin.Text);

        switch (ATV_atividadeDB.Insert(atividade))
        {
            case 0:
                confirmacao.Text = "ok";
                break;
            case -2:
                confirmacao.Text = "ZICOU";
                break;
        }
        ATV_descricao.Text = "";
        ATV_valormax.Text = "";
        ATV_valormin.Text = "";
       }

}