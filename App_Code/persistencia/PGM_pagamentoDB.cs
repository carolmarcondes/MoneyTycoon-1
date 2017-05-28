using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class PGM_pagamentoDB
{
    public static int Insert(PGM_pagamento mpagamento)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO PGM_pagamento (PGM_descricao, PGM_juros, PGM_prazo) VALUES (?PGM_descricao, ?PGM_juros, ?PGM_prazo)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGM_pagamento", mpagamento.PGM_descricao1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGM_pagamento", mpagamento.PGM_juros1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGM_pagamento", mpagamento.PGM_prazo1));
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