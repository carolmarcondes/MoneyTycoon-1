using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class LEL_leilaoDB
{
    public static int Insert(LEL_leilao leilao)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO LEL_leilao (LEL_inicio, LEL_fim, LEL_vlinicial, LEL_status, LEL_qnt, ALN_ID, INV_ID) VALUES (?LEL_inicio, ?LEL_fim, ?LEL_vlinicial, ?LEL_status, ?LEL_qnt, ?ALN_ID, ?INV_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_leilao", leilao.LEL_inicio1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_leilao", leilao.LEL_fim1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_leilao", leilao.LEL_vlinicial1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_leilao", leilao.LEL_status1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?LEL_leilao", leilao.LEL_qnt1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_ID", leilao.ALN_ID1.ALN_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?INV_ID", leilao.INV_ID1.INV_ID1));  // Chave Extrangeira 
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