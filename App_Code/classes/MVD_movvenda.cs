using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class MVD_movvenda
{

    private int MVD_ID;

    private ALN_aluno ALN_ID;
    private PDT_produto PDT_ID;
    private EST_estoque EST_ID;
    private PGM_pagamento PGM_ID;

    public int MVD_ID1
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

    public global::PGM_pagamento PGM_ID1
    {
        get
        {
            return PGM_ID;
        }

        set
        {
            PGM_ID = value;
        }
    }

    public PGM_pagamento PGM_pagamento
    {
        get
        {
            throw new System.NotImplementedException();
        }

        set
        {
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
}