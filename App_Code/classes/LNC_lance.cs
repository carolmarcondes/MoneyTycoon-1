using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class LNC_lance
{

    private int LNC_ID;
    private float LNC_valor;
    private DateTime LNC_data;
    private string LNC_status;

    private ALN_aluno ALN_ID;
    private MBC_movbancaria MBC_ID;
    private LEL_leilao LEL_ID;

public int LNC_ID1
    {
        get
        {
            return LNC_ID;
        }

        set
        {
            LNC_ID = value;
        }
    }

    public float LNC_valor1
    {
        get
        {
            return LNC_valor;
        }

        set
        {
            LNC_valor = value;
        }
    }

    public DateTime LNC_data1
    {
        get
        {
            return LNC_data;
        }

        set
        {
            LNC_data = value;
        }
    }

    public string LNC_status1
    {
        get
        {
            return LNC_status;
        }

        set
        {
            LNC_status = value;
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

    public global::MBC_movbancaria MBC_ID1
    {
        get
        {
            return MBC_ID;
        }

        set
        {
            MBC_ID = value;
        }
    }

    public global::LEL_leilao LEL_ID1
    {
        get
        {
            return LEL_ID;
        }

        set
        {
            LEL_ID = value;
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

    public LEL_leilao LEL_leilao
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public MBC_movbancaria MBC_movbancaria
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