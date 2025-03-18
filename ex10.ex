defmodule AgenciaBancaria do

  def calcular_rendimentos do
    processar_cliente(0,0)
  end

  defp processar_cliente(total_investido, total_juros) do
   codigo_cliente = String.to_integer(IO.gets("Código do cliente (Digite 0): ") |> String.trim())

   if codigo_cliente <= 0 do
    IO.puts("Programa Finalizado...")
    IO.puts("Total investido: R$ #{total_investido}")
    IO.puts("Total de juros: R$ #{total_juros}")
   else
    tipo_investimento = String.to_integer(IO.gets("\nTipo de investimento (1, 2 ou 3): ") |> String.trim())
    valor_investido = parse_valor(IO.gets("Valor investido: ") |> String.trim())

    rendimento_mensal =
      case tipo_investimento do
        1 -> valor_investido * 0.015
        2 -> valor_investido * 0.02
        3 -> valor_investido * 0.04
        _ ->
          IO.puts("Tipo de investimento inválido!")
          0
      end

      case tipo_investimento do
        1 -> IO.puts("\nRedimento mensal do cliente #{codigo_cliente} na modalidade Poupança: R$#{rendimento_mensal}\n")
        2 -> IO.puts("\nRedimento mensal do cliente #{codigo_cliente} na modalidade Poupança Plus: R$#{rendimento_mensal}\n")
        3 -> IO.puts("\nRedimento mensal do cliente #{codigo_cliente} na modalidade Fundos de Renda Fixa: R$#{rendimento_mensal}\n")
        _ -> IO.puts("\nTipo de investimento inválido!")
      end

      processar_cliente(total_investido + valor_investido, total_juros + rendimento_mensal)
   end
  end

  defp parse_valor(valor) do
    case Float.parse(valor) do
      {num, ""} -> num
      :error -> raise ArgumentError, "Valor inválido!"
    end
  end
end

AgenciaBancaria.calcular_rendimentos()
