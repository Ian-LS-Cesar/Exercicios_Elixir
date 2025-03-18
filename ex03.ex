defmodule MaiorNumero do
  def encontrar_maior do
    IO.puts("Digite cinco valores:")

    numeros =
      for i <- 1..5 do
        IO.gets("Numero #{i}: ") |> String.trim() |> parse_valor()
      end

    maior = Enum.max(numeros)

    IO.puts("O maior número é: #{maior}")
  end

  defp parse_valor(valor) do
    case Float.parse(valor) do
      {num, ""} -> num
      :error -> raise ArgumentError, "Valor inválido!"
    end
  end
end

MaiorNumero.encontrar_maior()
