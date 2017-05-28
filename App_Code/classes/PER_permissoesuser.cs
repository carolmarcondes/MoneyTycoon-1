using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

public class PER_permissoesuser
{
    private int PER_ID;
    private string PER_nome;
    private string PER_permissoes;

    public int PER_ID1
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

    public string PER_nome1
    {
        get
        {
            return PER_nome;
        }

        set
        {
            PER_nome = value;
        }
    }

    public string PER_permissoes1
    {
        get
        {
            return PER_permissoes;
        }

        set
        {
            PER_permissoes = value;
        }
    }
}