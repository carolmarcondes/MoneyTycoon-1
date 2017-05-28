using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class PDT_produtoDB
{
    public static int Insert(PDT_produto produto)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO PDT_produto (PDT_descricao, PDT_unidade, PDT_marca, PDT_preco, SST_ID) VALUES (?PDT_descricao, ?PDT_unidade, ?PDT_marca, ?PDT_preco, ?SST_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_produto", produto.PDT_descricao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_produto", produto.PDT_unidade1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_produto", produto.PDT_marca1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_produto", produto.PDT_preco1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?SST_ID", produto.SST_ID1.SST_ID1));  // Chave Extrangeira 
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