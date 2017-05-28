using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class MBC_movbancariaDB
{
    public static int Insert(MBC_movbancaria movbancaria)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO MBC_movbancaria (MBC_entrada, MBC_saida, MBC_obs, MBC_saldo, MBC_data, ALN_ID, ATV_ID, ADM_ID, MVD_ID) VALUES (?MBC_entrada, ?MBC_saida, ?MBC_obs, ?MBC_saldo, ?MBC_data, ?ALN_ID, ?ATV_ID, ?ADM_ID, ?MVD_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_movbancaria", movbancaria.MBC_entrada1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_movbancaria", movbancaria.MBC_saida1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_movbancaria", movbancaria.MBC_obs1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_movbancaria", movbancaria.MBC_saldo1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?MBC_movbancaria", movbancaria.MBC_data1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_ID", movbancaria.ALN_ID1.ALN_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?ATV_ID", movbancaria.ATV_ID1.ATV_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_ID", movbancaria.ADM_ID1.ADM_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?MVD_ID", movbancaria.MVD_ID1.MVD_ID1));  // Chave Extrangeira objCommand.ExecuteNonQuery();   // utilizado quando cdigo não tem retorno, como seria o caso do SELECT 
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