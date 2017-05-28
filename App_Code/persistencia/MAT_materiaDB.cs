using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class MAT_materiaDB
{
    public static int Insert(MAT_materia materia)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO MAT_materia (MAT_nome, ANO_ID) VALUES (?MAT_nome, ?ANO_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?MAT_materia", materia.MAT_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ANO_ID", materia.ANO_ID1.ANO_ID1));  // Chave Extrangeira 
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