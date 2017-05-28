using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class IVD_itemvenda
{

    private int IVD_ID;
    private float IVD_preco;

    private PDT_produto PDT_ID;
    private MVD_movvenda MVD_ID;
    private EST_estoque EST_ID;
    private PDT_produto PDT_preco;

    public int IVD_ID1
    {
        get
        {
            return IVD_ID;
        }

        set
        {
            IVD_ID = value;
        }
    }

    public float IVD_preco1
    {
        get
        {
            return IVD_preco;
        }

        set
        {
            IVD_preco = value;
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

    public global::MVD_movvenda MVD_ID1
    {
        get
        {
            return MVD_ID;
        }

        set
        {
            MVD_ID = value;
        }
    }

    public global::EST_estoque EST_ID1
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

    public global::PDT_produto PDT_preco1
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
}