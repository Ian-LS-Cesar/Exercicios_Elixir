defmodule MediaIdades do
  def calcular_media do
    IO.puts("Digite as idades. Digite 0 para terminar.")
    calcular_media(0, 0)
  end

  defp calcular_media(soma, quantidade) do
    idade = String.to_integer(IO.gets("Digite a idade: ") |> String.trim())

    if idade == 0 do
      if quantidade == 0 do
        IO.puts("Nenhuma idade foi digitada!")
      else
        media = soma / quantidade
        IO.puts("Média das idades: #{media}")
      end
    else
      calcular_media(soma + idade, quantidade + 1)
    end
  end
end

MediaIdades.calcular_media()
