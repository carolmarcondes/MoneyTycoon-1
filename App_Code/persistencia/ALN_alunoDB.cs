using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class ALN_alunoDB
{
    public static int Insert(ALN_aluno aluno)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO ALN_aluno (ALN_nome, ALN_sexo, ALN_cartao, ALN_nasc, ALN_creditos, ALN_matricula, USR_ID, SAL_ID) VALUES (?ALN_nome, ?ALN_sexo, ?ALN_cartao, ?ALN_nasc, ?ALN_creditos, ?ALN_matricula, ?USR_ID, ?SAL_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_sexo1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_cartao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_nasc1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_creditos1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ALN_aluno", aluno.ALN_matricula1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_ID", aluno.USR_ID1.USR_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?SAL_ID", aluno.SAL_ID1.SAL_ID1));  // Chave Extrangeira 
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