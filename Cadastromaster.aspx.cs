using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastromaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsalvar_Click(object sender, EventArgs e)
    {
        {
            RSP_responsavel responsavel = new RSP_responsavel();
            responsavel.RSP_nome1 = RSP_nome.Text;
            responsavel.RSP_email1 = RSP_email.Text;
            responsavel.RSP_cargo1 = RSP_cargo.Text;
            responsavel.RSP_tel1 = RSP_tel.Text;
            responsavel.RSP_matricula1 = RSP_matricula.Text;
            responsavel.RSP_horario1 = RSP_horario.Text;
            responsavel.USR_ID1.USR_user1 = USR_user.Text;
            responsavel.USR_ID1.USR_pwd1 = USR_pwd.Text;
            
            /*switch (RSP_responsavel.Insert(responsavel))
            {
                case 0:
                    confirmacao.Text = "ok";
                    break;
                case -2:
                    confirmacao.Text = "ZICOU";
                    break;
            }*/
            RSP_nome.Text = "";
            RSP_email.Text = "";
            RSP_cargo.Text = "";
            RSP_tel.Text = "";
            USR_user.Text = "";
            USR_pwd.Text = "";
            RSP_matricula.Text = "";
            RSP_horario.Text = "";
        }

    }
}