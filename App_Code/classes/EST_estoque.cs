using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class EST_estoque
{

    private int EST_ID;
    private int EST_qnt;
    private int EST_saida;
    private int EST_entrada;

    private ESC_escola ESC_ID;
    private PDT_produto PDT_ID;

    public int EST_ID1
    {
        get
        {
            return EST_ID;
        }

        set
        {
            EST_ID = value;
        }
    }

    public int EST_qnt1
    {
        get
        {
            return EST_qnt;
        }

        set
        {
            EST_qnt = value;
        }
    }

    public int EST_saida1
    {
        get
        {
            return EST_saida;
        }

        set
        {
            EST_saida = value;
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

    public ESC_escola ESC_escola
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public int EST_entrada1
    {
        get
        {
            return EST_entrada;
        }

        set
        {
            EST_entrada = value;
        }
    }
}