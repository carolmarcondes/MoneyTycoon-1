using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class LEL_leilao
{

    private int LEL_ID;
    private DateTime LEL_inicio;
    private DateTime LEL_fim;
    private float LEL_vlinicial;
    private string LEL_status;
    private int LEL_qnt;

    private ALN_aluno ALN_ID;
    private INV_inventario INV_ID;


    public int LEL_ID1
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

    public DateTime LEL_inicio1
    {
        get
        {
            return LEL_inicio;
        }

        set
        {
            LEL_inicio = value;
        }
    }

    public DateTime LEL_fim1
    {
        get
        {
            return LEL_fim;
        }

        set
        {
            LEL_fim = value;
        }
    }

    public float LEL_vlinicial1
    {
        get
        {
            return LEL_vlinicial;
        }

        set
        {
            LEL_vlinicial = value;
        }
    }

    public string LEL_status1
    {
        get
        {
            return LEL_status;
        }

        set
        {
            LEL_status = value;
        }
    }

    public int LEL_qnt1
    {
        get
        {
            return LEL_qnt;
        }

        set
        {
            LEL_qnt = value;
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

    public global::INV_inventario INV_ID1
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

    public INV_inventario INV_inventario
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