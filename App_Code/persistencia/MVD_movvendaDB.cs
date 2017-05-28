using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class MVD_movvendaDB
{
    public static int Insert(MVD_movvenda movvenda)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO MVD_movvenda (ALN_ID, PDT_ID, EST_ID, PGM_ID) VALUES (?ALN_ID, ?PDT_ID, ?EST_ID, ?PGM_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_ID", movvenda.ALN_ID1.ALN_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_ID", movvenda.PDT_ID1.PDT_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?EST_ID", movvenda.EST_ID1.EST_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGM_ID", movvenda.PGM_ID1.PGM_ID1));  // Chave Extrangeira 
            objCommand.ExecuteNonQuery();   // utilizado quando cdigo não tem retorno, como seria o caso do SELECT 
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }
}