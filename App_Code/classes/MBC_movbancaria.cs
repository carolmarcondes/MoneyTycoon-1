using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class MBC_movbancaria
{

    private int MBC_ID;
    private float MBC_entrada;
    private float MBC_saida;
    private string MBC_obs;
    private float MBC_saldo;
    private DateTime MBC_data;

    private ALN_aluno ALN_ID;
    private ATV_atividade ATV_ID;
    private ADM_admprof ADM_ID;
    private MVD_movvenda MVD_ID;

    public int MBC_ID1
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

    public float MBC_entrada1
    {
        get
        {
            return MBC_entrada;
        }

        set
        {
            MBC_entrada = value;
        }
    }

    public float MBC_saida1
    {
        get
        {
            return MBC_saida;
        }

        set
        {
            MBC_saida = value;
        }
    }

    public string MBC_obs1
    {
        get
        {
            return MBC_obs;
        }

        set
        {
            MBC_obs = value;
        }
    }

    public float MBC_saldo1
    {
        get
        {
            return MBC_saldo;
        }

        set
        {
            MBC_saldo = value;
        }
    }

    public DateTime MBC_data1
    {
        get
        {
            return MBC_data;
        }

        set
        {
            MBC_data = value;
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

    public global::ATV_atividade ATV_ID1
    {
        get
        {
            return ATV_ID;
        }

        set
        {
            ATV_ID = value;
        }
    }

    public global::ADM_admprof ADM_ID1
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

    public ATV_atividade ATV_atividade
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public MVD_movvenda MVD_movvenda
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
        }
    }

    public ADM_admprof ADM_admprof
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