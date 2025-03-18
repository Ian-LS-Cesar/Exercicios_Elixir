defmodule Gratificacao_Funcionarios do
  def calcular_gratificacao do
    horas_extras = String.to_integer(IO.gets("Digite a quantidade de horas extras: ") |> String.trim())
    horas_faltas = String.to_integer(IO.gets("Digite a quantidade de horas faltas: ") |> String.trim())

    horas = max(horas_extras * 60  - div(2 * (horas_faltas * 60), 3), 0)

    IO.puts("Horas Totais: #{div(horas, 60)} horas (#{horas} minutos)")
    gratificacao =
    cond do
      horas > 2500 ->
        500

      horas < 2500 and horas >= 1800 ->
        400

      horas < 1800 and horas >= 1200 ->
        300

      horas < 1200 and horas >= 600 ->
        200

      horas < 600 ->
        100
    end

    IO.puts("Gratificação: R$#{gratificacao}")
  end
end

Gratificacao_Funcionarios.calcular_gratificacao()
