using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class ESC_escolaDB
{

    public static int Insert(ESC_escola escola)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO ESC_escola (ESC_nome, ESC_endereco, ESC_numend, ESC_bairro, ESC_cidade, ESC_estado, ESC_cnpj, ESC_ie, ESC_tel, ESC_email, ESC_cep, ESC_status) VALUES (?ESC_nome, ?ESC_endereco, ?ESC_numend, ?ESC_bairro, ?ESC_cidade, ?ESC_estado, ?ESC_cnpj, ?ESC_ie, ?ESC_tel, ?ESC_email, ?ESC_cep, ?ESC_status)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_nome", escola.ESC_nome1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_endereco", escola.ESC_endereco1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_numend", escola.ESC_numend1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_bairro", escola.ESC_bairro1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_cidade", escola.ESC_cidade1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_estado", escola.ESC_estado1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_cnpj", escola.ESC_cnpj1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_ie", escola.ESC_ie1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_tel", escola.ESC_tel1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_email", escola.ESC_email1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_cep", escola.ESC_cep1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?ESC_status", escola.ESC_status1));
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

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;

        IDataAdapter objDataAdapter;
        string sql = "";

        objConexao = Mapeamento.Connection();
        objCommand = Mapeamento.Command(sql, objConexao);

        objDataAdapter = Mapeamento.Adapter(objCommand);
        objDataAdapter.Fill(ds); //dataset container de dados

        objConexao.Close();
        objConexao.Dispose();
        objCommand.Dispose();

        return ds;
    }

}