using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class MIV_movinventario
{

    private int MIV_ID;

    private MVD_movvenda MVD_ID;
    private INV_inventario INV_ID;
    private LNC_lance LNC_ID;

    public int MIV_ID1
    {
        get
        {
            return MIV_ID;
        }

        set
        {
            MIV_ID = value;
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

    public global::LNC_lance LNC_ID1
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

    public LNC_lance LNC_lance
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
}