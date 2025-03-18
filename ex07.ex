defmodule TabuadaNumero do
  def tabuada() do
    IO.puts("Digite um número: ")
    numero = IO.gets("") |> String.trim() |> String.to_integer()
    mostrar_tabuada(numero, 0)
  end

  defp mostrar_tabuada(numero, multiplicador) when multiplicador <= 9 do
    resultado = numero * multiplicador
    IO.puts("#{numero} x #{multiplicador} = #{resultado}")
    mostrar_tabuada(numero, multiplicador + 1)
  end

  defp mostrar_tabuada(_numero, _multiplicador), do: :ok
end

TabuadaNumero.tabuada()
