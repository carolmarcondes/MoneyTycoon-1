using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class USR_tipousuarioDB
{
    public static int Insert(USR_tipousuario tipousuario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO USR_tipousuario (USR_descricao, USR_user, USR_pwd, USR_status, PER_ID) VALUES (?USR_descricao, ?USR_user, ?USR_pwd, ?USR_status, ?PER_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_tipousuario", tipousuario.USR_descricao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_tipousuario", tipousuario.USR_user1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_tipousuario", tipousuario.USR_pwd1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_tipousuario", tipousuario.USR_status1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PER_ID", tipousuario.PER_ID1.PER_ID1));  // Chave Extrangeira 
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