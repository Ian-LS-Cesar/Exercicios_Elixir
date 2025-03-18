defmodule Boletim do

  def boletim_aluno do
    IO.puts("Digite as quatro notas do aluno!\n")
    boletim()
  end

  defp boletim do
    # Lê as notas do usuário
    nota1 = parse_valor(IO.gets("Nota 1: ") |> String.trim())
    nota2 = parse_valor(IO.gets("Nota 2: ") |> String.trim())
    nota3 = parse_valor(IO.gets("Nota 3: ") |> String.trim())
    nota4 = parse_valor(IO.gets("Nota 4: ") |> String.trim())

    # Calcula a média aritmética
    media = (nota1 + nota2 + nota3 + nota4) / 4

    # Exibe a média e o resultado
    IO.puts("Média: #{media}\n")

    if media >= 7.0 do
      IO.puts("APROVADO")
    else
      IO.puts("REPROVADO")
    end


  end

  defp parse_valor(valor) do
    case Float.parse(valor) do
      {num, ""} -> num
      :error -> raise ArgumentError, "Valor inválido!"
    end
  end

end

Boletim.boletim_aluno()
