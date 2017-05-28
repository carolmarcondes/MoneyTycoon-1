using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class SST_subsetorDB
{
    public static int Insert(SST_subsetor subsetor)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO SST_subsetor (SST_nome, STR_ID) VALUES (?SST_nome, ?STR_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?SST_subsetor", subsetor.SST_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?STR_ID", subsetor.STR_ID1.STR_ID1));  // Chave Extrangeira 
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