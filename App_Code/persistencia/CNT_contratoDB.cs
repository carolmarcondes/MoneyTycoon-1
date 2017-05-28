using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class CNT_contratoDB
{
    public static int Insert(CNT_contrato contrato)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO CNT_contrato (CNT_inicio, CNT_fim,CNT_parcelas, CNT_valor, CNT_status, ESC_ID) VALUES (?CNT_inicio, ?CNT_fim, ?CNT_parcelas, ?CNT_valor, ?CNT_status, ?ESC_ID)";
 
            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_contrato", contrato.CNT_inicio1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_contrato", contrato.CNT_fim1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_contrato", contrato.CNT_parcelas1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_contrato", contrato.CNT_valor1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_contrato", contrato.CNT_status1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_ID", contrato.ESC_ID1.ESC_ID1));  // Chave Extrangeira 
            
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