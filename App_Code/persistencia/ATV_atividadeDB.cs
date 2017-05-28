using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class ATV_atividadeDB
{
    public static int Insert(ATV_atividade atividade)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO ATV_atividade (ATV_descricao, ATV_valormax, ATV_valormin) VALUES (?ATV_descricao, ?ATV_valormax, ?ATV_valormin)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ATV_descricao", atividade.ATV_descricao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ATV_valormax", atividade.ATV_valormax1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ATV_valormin", atividade.ATV_valormin1));
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