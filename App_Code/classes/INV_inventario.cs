using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class INV_inventario
{

    private int INV_ID;
    private string INV_produto;
    private int INV_qnt;
    private int INV_entrada;
    private int INV_saida;

    private ALN_aluno ALN_ID;
    private PDT_produto PDT_ID;
    

    public int INV_ID1
    {
        get
        {
            return INV_ID;
        }

        set
        {
            INV_ID = value;
        }
    }

    public global::ALN_aluno ALN_ID1
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

    public global::PDT_produto PDT_ID1
    {
        get
        {
            return PDT_ID;
        }

        set
        {
            PDT_ID = value;
        }
    }

    public ALN_aluno ALN_aluno
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public PDT_produto PDT_produto
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public string INV_produto1
    {
        get
        {
            return INV_produto;
        }

        set
        {
            INV_produto = value;
        }
    }

    public int INV_qnt1
    {
        get
        {
            return INV_qnt;
        }

        set
        {
            INV_qnt = value;
        }
    }

    public int INV_entrada1
    {
        get
        {
            return INV_entrada;
        }

        set
        {
            INV_entrada = value;
        }
    }

    public int INV_saida1
    {
        get
        {
            return INV_saida;
        }

        set
        {
            INV_saida = value;
        }
    }
}