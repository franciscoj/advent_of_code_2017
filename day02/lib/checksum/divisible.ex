defmodule Checksum.Divisible do
  def calculate(spreadsheet) do
    spreadsheet
    |> Enum.map(&find_divisors/1)
    |> Enum.map(&divide/1)
    |> Enum.reduce(0, &+/2)
  end

  defp divide({a, b}), do: round(a / b)

  defp find_even_divisor(num, [el | _]) when rem(num, el) == 0, do: { num, el }
  defp find_even_divisor(num, [el | _]) when rem(el, num) == 0, do: { el, num }
  defp find_even_divisor(num, [_ | list]), do: find_even_divisor(num, list)
  defp find_even_divisor(_, []), do: nil

  defp find_divisors([num | list]) do
    with {dividend, divisor} <- find_even_divisor(num, list) do
      {dividend, divisor}
    else
      _ -> find_divisors(list)
    end
  end
end
