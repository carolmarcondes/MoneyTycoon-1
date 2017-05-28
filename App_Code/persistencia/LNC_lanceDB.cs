using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class LNC_lanceDB
{
    public static int Insert(LNC_lance lance)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO LNC_lance (LNC_valor, LNC_data, LNC_status, ALN_ID, MBC_ID, LEL_ID ) VALUES (?LNC_valor, ?LNC_data, ?LNC_status, ?ALN_ID, ?MBC_ID, ?LEL_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?LNC_lance", lance.LNC_valor1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LNC_lance", lance.LNC_data1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LNC_lance", lance.LNC_status1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_ID", lance.ALN_ID1.ALN_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_ID", lance.MBC_ID1.MBC_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_ID", lance.LEL_ID1.LEL_ID1));  // Chave Extrangeira 
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