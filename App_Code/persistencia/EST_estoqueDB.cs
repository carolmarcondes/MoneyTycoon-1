using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class EST_estoqueDB
{
    public static int Insert(EST_estoque estoque)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO EST_estoque (EST_qnt, EST_saida, EST_entrada, ESC_ID, PDT_ID) VALUES (?EST_qnt, ?EST_saida, ?ESC_ID, ?EST_entrada, ?PDT_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?EST_estoque", estoque.EST_qnt1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?EST_estoque", estoque.EST_saida1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?EST_estoque", estoque.EST_entrada1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_ID", estoque.ESC_ID1.ESC_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_ID", estoque.PDT_ID1.PDT_ID1));  // Chave Extrangeira 
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