defmodule DuasNotas do
  def media do
    IO.puts("Digite duas notas: ")

    nota1 = parse_valor(IO.gets("Nota 1: ") |> String.trim())
    nota2 = parse_valor(IO.gets("Nota 2: ") |> String.trim())

    media = calcular_media(nota1, nota2)

    IO.puts("Média: #{media}")

    cond do
      media >= 7.0 ->
        IO.puts("APROVADO")

      media < 7.0 and media >= 3.0 ->
        IO.puts("EXAME")

      media < 3.0 ->
        IO.puts("REPROVADO")
    end
  end

  defp calcular_media(nota1, nota2) do
    (nota1 + nota2) / 2
  end

  defp parse_valor(valor) do
    case Float.parse(valor) do
      {num, ""} -> num
      :error -> raise ArgumentError, "Valor inválido!"
    end
  end
end

DuasNotas.media()
