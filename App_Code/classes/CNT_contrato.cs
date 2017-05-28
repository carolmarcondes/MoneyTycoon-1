using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CNT_contrato
{

    private int CNT_ID;
    private DateTime CNT_inicio;
    private DateTime CNT_fim;
    private int CNT_parcelas;
    private float CNT_valor;
    private Boolean CNT_status;

    private ESC_escola ESC_ID;

    public int CNT_ID1
    {
        get
        {
            return CNT_ID;
        }

        set
        {
            CNT_ID = value;
        }
    }

    public DateTime CNT_inicio1
    {
        get
        {
            return CNT_inicio;
        }

        set
        {
            CNT_inicio = value;
        }
    }

    public DateTime CNT_fim1
    {
        get
        {
            return CNT_fim;
        }

        set
        {
            CNT_fim = value;
        }
    }

    public int CNT_parcelas1
    {
        get
        {
            return CNT_parcelas;
        }

        set
        {
            CNT_parcelas = value;
        }
    }

    public float CNT_valor1
    {
        get
        {
            return CNT_valor;
        }

        set
        {
            CNT_valor = value;
        }
    }

    public bool CNT_status1
    {
        get
        {
            return CNT_status;
        }

        set
        {
            CNT_status = value;
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
}