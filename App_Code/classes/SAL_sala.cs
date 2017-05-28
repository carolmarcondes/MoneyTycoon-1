using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class SAL_sala
{

    private int SAL_ID;
    private string SAL_nome;

    private MAT_materia MAT_ID;
    private ADM_admprof ADM_ID;

    public int SAL_ID1
    {
        get
        {
            return SAL_ID;
        }

        set
        {
            SAL_ID = value;
        }
    }

    public string SAL_nome1
    {
        get
        {
            return SAL_nome;
        }

        set
        {
            SAL_nome = value;
        }
    }

    public global::MAT_materia MAT_ID1
    {
        get
        {
            return MAT_ID;
        }

        set
        {
            MAT_ID = value;
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

    public MAT_materia MAT_materia
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