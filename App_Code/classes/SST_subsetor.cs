using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class SST_subsetor
{
    private int SST_ID;
    private string SST_nome;

    private STR_setor STR_ID;

    public int SST_ID1
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

    public string SST_nome1
    {
        get
        {
            return SST_nome;
        }

        set
        {
            SST_nome = value;
        }
    }

    public global::STR_setor STR_ID1
    {
        get
        {
            return STR_ID;
        }

        set
        {
            STR_ID = value;
        }
    }
}