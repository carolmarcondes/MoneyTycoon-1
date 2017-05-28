using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastroprof : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        {
            ADM_admprof admprof = new ADM_admprof();
            admprof.ADM_nome1 = ADM_nome.Text;
            admprof.ADM_funcao1 = ADM_funcao.Text;
            admprof.ADM_email1 = ADM_email.Text;
            admprof.ADM_matricula1 = ADM_matricula.Text;
           // admprof.MAT_ID1.MAT_nome1 = MAT_nome.Text;
            //admprof.SAL_ID1.SAL_nome1 = SAL_nome.Text;
            admprof.USR_ID1.USR_user1 = USR_user.Text;
            admprof.USR_ID1.USR_pwd1 = USR_pwd.Text;
            //admprof.ANO_ID1.ANO_ano1 = ANO_ano.Text; //colocar campo na tela

            /*switch (ADM_admprof.Insert(admprof))
            {
                case 0:
                    confirmacao.Text = "ok";
                    break;
                case -2:
                    confirmacao.Text = "ZICOU";
                    break;
            }*/ 
            ADM_nome.Text = "";
            ADM_funcao.Text = "";
            ADM_email.Text = "";
            ADM_matricula.Text = "";
            //MAT_nome.Text = "";
            //SAL_nome.Text = "";
            USR_user.Text = "";
            USR_pwd.Text = "";
            //ANO_ano.Text = "";

        }

    }

}
