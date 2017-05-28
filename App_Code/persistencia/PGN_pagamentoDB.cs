using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class PGN_pagamentoDB
{
    public static int Insert(PGN_pagamento npagamento)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;  // Abre a conexao 
            IDbCommand objCommand;  // Cria o comando 
            string sql = "INSERT INTO PGN_pagamento (PGN_vencimento, PGN_forma, PGN_dtpagamento, PGN_juros, PGN_parcela, CNT_ID) VALUES (?PGN_vencimento, ?PGN_forma, ?PGN_dtpagamento, ?PGN_juros, ?PGN_parcela, ?CNT_ID)";

            objConexao = Mapeamento.Connection();
            objCommand = Mapeamento.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGN_pagamento", npagamento.PGN_vencimento1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGN_pagamento", npagamento.PGN_forma1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGN_pagamento", npagamento.PGN_dtpagamento1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGN_pagamento", npagamento.PGN_juros1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?PGN_pagamento", npagamento.PGN_parcela1));
            objCommand.Parameters.Add(Mapeamento.Parameter("?CNT_ID", npagamento.CNT_ID1.CNT_ID1));  // Chave Extrangeira 
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