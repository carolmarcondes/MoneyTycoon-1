using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class ANO_anoescolarDB
{
    public static int Insert(ANO_anoescolar anoescolar)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO ANO_anoescolar (ANO_ano) VALUES (?ANO_ano)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ANO_anoescolar", anoescolar.ANO_ano1));
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