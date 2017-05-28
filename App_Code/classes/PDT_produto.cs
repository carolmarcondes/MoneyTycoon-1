using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class PDT_produto
{

    private int PDT_ID;
    private string PDT_descricao;
    private string PDT_unidade;
    private string PDT_marca;
    private string PDT_preco;

    private SST_subsetor SST_ID;

    public int PDT_ID1
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

    public string PDT_descricao1
    {
        get
        {
            return PDT_descricao;
        }

        set
        {
            PDT_descricao = value;
        }
    }

    public string PDT_unidade1
    {
        get
        {
            return PDT_unidade;
        }

        set
        {
            PDT_unidade = value;
        }
    }

    public string PDT_marca1
    {
        get
        {
            return PDT_marca;
        }

        set
        {
            PDT_marca = value;
        }
    }

    public string PDT_preco1
    {
        get
        {
            return PDT_preco;
        }

        set
        {
            PDT_preco = value;
        }
    }

    public global::SST_subsetor SST_ID1
    {
        get
        {
            return SST_ID;
        }

        set
        {
            SST_ID = value;
        }
    }

    public SST_subsetor SST_subsetor
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }
}