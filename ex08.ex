defmodule NumerosPrimos do
  def primo?(n) when n <= 1, do: false
  def primo?(2), do: true

  def primo?(n) do
    max_divisor = :math.sqrt(n) |> trunc()

    if max_divisor < 2 do
      true
    else
      Enum.all?(2..max_divisor, fn x -> rem(n, x) != 0 end)
    end
  end

  def contar_primos() do
    IO.puts("Digite 10 números inteiros!")

    numeros =
      for i <- 1..10 do
        IO.gets("Número #{i}: ") |> String.trim() |> String.to_integer()
      end

    quantidade_primos = Enum.count(numeros, &primo?/1)

    IO.puts("Quantidade de números primos: #{quantidade_primos}")
  end
end

NumerosPrimos.contar_primos()
