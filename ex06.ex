defmodule CompanhiaTeatro do

  def valor_ingressos(valor_ingresso, ingressos_vendidos, despesas) do
    IO.puts("| Lucro Máximo Esperado | Preço do Ingresso | Ingressos Vendidos | ")
    calcular_lucro(valor_ingresso, ingressos_vendidos, despesas)
  end

  defp calcular_lucro(valor_ingresso, ingressos_vendidos, despesas) when valor_ingresso >= 1.00 do
    receita = ingressos_vendidos * valor_ingresso
    lucro = receita - despesas
    IO.puts("| R$#{lucro} | R$#{valor_ingresso} | #{ingressos_vendidos} ingressos |")
    calcular_lucro(valor_ingresso - 0.50, ingressos_vendidos + 26, despesas)
  end

  defp calcular_lucro(_valor_ingresso, _ingressos_vendidos, _despesas), do: :ok
end

CompanhiaTeatro.valor_ingressos(5.00, 120, 200)
