using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ADM_admprof
{

    private int ADM_ID;
    private string ADM_nome;
    private string ADM_funcao;
    private string ADM_matricula;
    private string ADM_email;

    private ESC_escola ESC_ID;
    private USR_tipousuario USR_ID;
    private MAT_materia MAT_ID;
    private ANO_anoescolar ANO_ID;
    private SAL_sala SAL_ID;

    public int ADM_ID1
    {
        get
        {
            return ADM_ID;
        }

        set
        {
            ADM_ID = value;
        }
    }

    public string ADM_nome1
    {
        get
        {
            return ADM_nome;
        }

        set
        {
            ADM_nome = value;
        }
    }

    public string ADM_funcao1
    {
        get
        {
            return ADM_funcao;
        }

        set
        {
            ADM_funcao = value;
        }
    }

    public string ADM_matricula1
    {
        get
        {
            return ADM_matricula;
        }

        set
        {
            ADM_matricula = value;
        }
    }

    public string ADM_email1
    {
        get
        {
            return ADM_email;
        }

        set
        {
            ADM_email = value;
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

    public global::MAT_materia MAT_ID1
    {
        get
        {
            return MAT_ID;
        }

        set
        {
            MAT_ID = value;
        }
    }

    public global::ANO_anoescolar ANO_ID1
    {
        get
        {
            return ANO_ID;
        }

        set
        {
            ANO_ID = value;
        }
    }

    public global::SAL_sala SAL_ID1
    {
        get
        {
            return SAL_ID;
        }

        set
        {
            SAL_ID = value;
        }
    }
}