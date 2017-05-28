using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class MAT_materia
{

    private int MAT_ID;
    private string MAT_nome;

    private ANO_anoescolar ANO_ID;

    public int MAT_ID1
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

    public string MAT_nome1
    {
        get
        {
            return MAT_nome;
        }

        set
        {
            MAT_nome = value;
        }
    }

    public global::ANO_anoescolar ANO_ID1
    {
        get
        {
            return ANO_ID;
        }

        set
        {
            ANO_ID = value;
        }
    }
}