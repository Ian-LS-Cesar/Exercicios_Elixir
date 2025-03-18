defmodule SaldoMedio do
  def calcular_saldo_medio do
    saldo_cliente = parse_valor(IO.gets("Digite o saldo do cliente: ") |> String.trim())

    credito_cliente =
      cond do
        saldo_cliente > 4000.0 ->
          saldo_cliente * 0.3

        saldo_cliente <= 4000.0 and saldo_cliente > 3000.0 ->
          saldo_cliente * 0.25

        saldo_cliente <= 3000.0 and saldo_cliente > 2000.0 ->
          saldo_cliente * 0.2

        saldo_cliente <= 2000.0 ->
          saldo_cliente * 0.1
      end

    IO.puts(:io.format("Saldo: R$~.2f  Credito: R$~.2f \n", [saldo_cliente, credito_cliente]))
  end


  defp parse_valor(valor) do
    case Float.parse(valor) do
      {num, ""} -> num
      :error -> raise ArgumentError, "Valor inválido!"
    end
  end


end

SaldoMedio.calcular_saldo_medio()
