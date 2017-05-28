using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class IVD_itemvendaDB
{
    public static int Insert(IVD_itemvenda itemvenda)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO IVD_itemvenda (IVD_preco, PDT_ID, MVD_ID, EST_ID, PDT_preco) VALUES ( ?IVD_preco, ?PDT_ID, ?MVD_ID, ?EST_ID, ?PDT_preco)";
            
            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?IVD_preco", itemvenda.IVD_preco1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_ID", itemvenda.PDT_ID1.PDT_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?MVD_ID", itemvenda.MVD_ID1.MVD_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?EST_ID", itemvenda.EST_ID1.EST_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?PTD_preco", itemvenda.PDT_preco1.PDT_preco1));  // Chave Extrangeira 
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