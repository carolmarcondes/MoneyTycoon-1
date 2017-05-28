using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class USR_tipousuario
{
    
    private int USR_ID;
    private string USR_descricao;
    private string USR_user;
    private string USR_pwd;
    private Boolean USR_status;

    private PER_permissoesuser PER_ID;

    public int USR_ID1
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

    public string USR_descricao1
    {
        get
        {
            return USR_descricao;
        }

        set
        {
            USR_descricao = value;
        }
    }

    public string USR_user1
    {
        get
        {
            return USR_user;
        }

        set
        {
            USR_user = value;
        }
    }

    public string USR_pwd1
    {
        get
        {
            return USR_pwd;
        }

        set
        {
            USR_pwd = value;
        }
    }

    public bool USR_status1
    {
        get
        {
            return USR_status;
        }

        set
        {
            USR_status = value;
        }
    }

    public global::PER_permissoesuser PER_ID1
    {
        get
        {
            return PER_ID;
        }

        set
        {
            PER_ID = value;
        }
    }
}