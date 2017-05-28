using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class RSP_responsavelDB
{
    public static int Insert(RSP_responsavel responsavel)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO RSP_responsavel (RSP_nome, RSP_cargo, RSP_tel, RSP_email, RSP_horario, RSP_matricula, ESC_ID, USR_ID) VALUES (?RSP_nome, ?RSP_cargo, ?RSP_tel, ?RSP_email, ?RSP_horario, ?RSP_matricula, ?ESC_ID, ?USR_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_cargo1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_tel1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_email1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_horario1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?RSP_responsavel", responsavel.RSP_matricula1)); objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_ID", responsavel.ESC_ID1.ESC_ID1));  // Chave Extrangeira 
            objCommand.Parameters.Add(Mapeamento.Parameter("?USR_ID", responsavel.USR_ID1.USR_ID1));  // Chave Extrangeira 
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