using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class ADM_admprofDB
{
    public static int Insert(ADM_admprof admprof)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO ADM_admprof (ADM_nome, ADM_funcao, ADM_matricula, ADM_email ESC_ID, USR_ID, MAT_ID, ANO_ID, SAL_ID) VALUES (?ADM_nome, ?ADM_funcao, ?ADM_matricula, ?ADM_email, ?ESC_ID, ?USR_ID, ?MAT_ID, ?ANO_ID, ?SAL_ID)";
             
            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_admprof", admprof.ADM_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_admprof", admprof.ADM_funcao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_admprof", admprof.ADM_matricula1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ADM_admprof", admprof.ADM_email1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_ID", admprof.ESC_ID1.ESC_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_ID", admprof.USR_ID1.USR_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?MAT_ID", admprof.MAT_ID1.MAT_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?ANO_ID", admprof.ANO_ID1.ANO_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?SAL_ID", admprof.SAL_ID1.SAL_ID1));  // Chave Extrangeira 
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