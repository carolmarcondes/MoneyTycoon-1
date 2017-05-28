using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class PGN_pagamento
{

    private int PGN_ID;
    private float PGN_valor;
    private DateTime PGN_vencimento;
    private string PGN_forma;
    private string PGN_dtpagamento;
    private string PGN_juros;
    private int PGN_parcela;

    private CNT_contrato CNT_ID;

    public int PGN_ID1
    {
        get
        {
            return PGN_ID;
        }

        set
        {
            PGN_ID = value;
        }
    }

    public float PGN_valor1
    {
        get
        {
            return PGN_valor;
        }

        set
        {
            PGN_valor = value;
        }
    }

    public DateTime PGN_vencimento1
    {
        get
        {
            return PGN_vencimento;
        }

        set
        {
            PGN_vencimento = value;
        }
    }

    public string PGN_forma1
    {
        get
        {
            return PGN_forma;
        }

        set
        {
            PGN_forma = value;
        }
    }

    public string PGN_dtpagamento1
    {
        get
        {
            return PGN_dtpagamento;
        }

        set
        {
            PGN_dtpagamento = value;
        }
    }

    public string PGN_juros1
    {
        get
        {
            return PGN_juros;
        }

        set
        {
            PGN_juros = value;
        }
    }

    public int PGN_parcela1
    {
        get
        {
            return PGN_parcela;
        }

        set
        {
            PGN_parcela = value;
        }
    }

    public global::CNT_contrato CNT_ID1
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

    public CNT_contrato CNT_contrato
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