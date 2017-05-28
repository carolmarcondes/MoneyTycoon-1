using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class MIV_movinventarioDB
{
    public static int Insert(MIV_movinventario movinventario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO MIV_movinventario (MVD_ID, INV_ID, LNC_ID) VALUES (?MVD_ID, ?INV_ID, ?LNC_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?MVD_ID", movinventario.MVD_ID1.MVD_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_ID", movinventario.INV_ID1.INV_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?LNC_ID", movinventario.LNC_ID1.LNC_ID1));  // Chave Extrangeira 
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