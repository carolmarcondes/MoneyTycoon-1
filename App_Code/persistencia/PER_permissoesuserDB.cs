using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
public class PER_permissoesuserDB
{
    public static int Insert(PER_permissoesuser permissoesuser)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO PER_permissoes (PER_nome, PER_permissoes) VALUES (?PER_nome, ?PER_permissoes)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?PER_nome", permissoesuser.PER_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PER_permissoes", permissoesuser.PER_permissoes1));
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