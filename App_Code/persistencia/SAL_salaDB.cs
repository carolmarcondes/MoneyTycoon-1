using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class SAL_salaDB
{
    public static int Insert(SAL_sala sala)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO SAL_sala (SAL_nome, MAT_ID, ADM_ID) VALUES (?SAL_nome, ?MAT_ID, ?ADM_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?SAL_sala", sala.SAL_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?MAT_ID", sala.MAT_ID1.MAT_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_ID", sala.ADM_ID1.ADM_ID1));  // Chave Extrangeira 
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