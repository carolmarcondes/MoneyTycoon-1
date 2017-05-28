using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class RSP_responsavel
{

    private int RSP_ID;
    private string RSP_nome;
    private string RSP_cargo;
    private string RSP_tel;
    private string RSP_email;
    private string RSP_horario;
    private string RSP_matricula;

    private ESC_escola ESC_ID;
    private USR_tipousuario USR_ID;

    public int RSP_ID1
    {
        get
        {
            return RSP_ID;
        }

        set
        {
            RSP_ID = value;
        }
    }

    public string RSP_nome1
    {
        get
        {
            return RSP_nome;
        }

        set
        {
            RSP_nome = value;
        }
    }

    public string RSP_cargo1
    {
        get
        {
            return RSP_cargo;
        }

        set
        {
            RSP_cargo = value;
        }
    }

    public string RSP_tel1
    {
        get
        {
            return RSP_tel;
        }

        set
        {
            RSP_tel = value;
        }
    }

    public string RSP_email1
    {
        get
        {
            return RSP_email;
        }

        set
        {
            RSP_email = value;
        }
    }

    public string RSP_horario1
    {
        get
        {
            return RSP_horario;
        }

        set
        {
            RSP_horario = value;
        }
    }

    public string RSP_matricula1
    {
        get
        {
            return RSP_matricula;
        }

        set
        {
            RSP_matricula = value;
        }
    }

    public global::ESC_escola ESC_ID1
    {
        get
        {
            return ESC_ID;
        }

        set
        {
            ESC_ID = value;
        }
    }

    public global::USR_tipousuario USR_ID1
    {
        get
        {
            return USR_ID;
        }

        set
        {
            USR_ID = value;
        }
    }
}