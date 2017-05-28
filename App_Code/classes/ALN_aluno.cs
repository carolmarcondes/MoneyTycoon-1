using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ALN_aluno
{

    private int ALN_ID;
    private string ALN_nome;
    private string ALN_sexo;
    private string ALN_cartao;
    private DateTime ALN_nasc;
    private float ALN_creditos;
    private string ALN_matricula;
  

    private USR_tipousuario USR_ID;
    private SAL_sala SAL_ID;

    public int ALN_ID1
    {
        get
        {
            return ALN_ID;
        }

        set
        {
            ALN_ID = value;
        }
    }

    public string ALN_nome1
    {
        get
        {
            return ALN_nome;
        }

        set
        {
            ALN_nome = value;
        }
    }

    public string ALN_sexo1
    {
        get
        {
            return ALN_sexo;
        }

        set
        {
            ALN_sexo = value;
        }
    }

    public string ALN_cartao1
    {
        get
        {
            return ALN_cartao;
        }

        set
        {
            ALN_cartao = value;
        }
    }

    public float ALN_creditos1
    {
        get
        {
            return ALN_creditos;
        }

        set
        {
            ALN_creditos = value;
        }
    }

    public string ALN_matricula1
    {
        get
        {
            return ALN_matricula;
        }

        set
        {
            ALN_matricula = value;
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

    public DateTime ALN_nasc1
    {
        get
        {
            return ALN_nasc;
        }

        set
        {
            ALN_nasc = value;
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