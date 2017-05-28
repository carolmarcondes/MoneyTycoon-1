using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class INV_inventarioDB
{
    public static int Insert(INV_inventario inventario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO INV_inventario (INV_qnt, INV_produto, INV_entrada, INV_saida, ALN_ID, PDT_ID) VALUES (?INV_qnt, ?INV_produto, ?ALN_ID, ?PDT_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_inventario", inventario.INV_qnt1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_inventario", inventario.INV_produto1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_inventario", inventario.INV_entrada1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_inventario", inventario.INV_saida1));

            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_ID", inventario.ALN_ID1.ALN_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?PDT_ID", inventario.PDT_ID1.PDT_ID1));  // Chave Extrangeira 
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