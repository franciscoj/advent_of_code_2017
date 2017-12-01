defmodule InverseCaptcha do
  @moduledoc """
  Solution for part 2 of http://adventofcode.com/2017/day/1
  """

  def solve(input) do
    input
    |> String.codepoints
    |> Enum.map(&parse/1)
    |> split
    |> List.zip
    |> Enum.reduce(0, &sum_valid_digits/2)
  end

  # This can be done because the input is always ensured to be even
  defp split(list) do
    len = list |> length

    [
      Enum.slice(list, 0..round(len/2) - 1),
      Enum.slice(list, round(len/2)..len)
    ]
  end

  defp sum_valid_digits({ num, num }, sum), do: sum + 2*num
  defp sum_valid_digits({ _, _}, sum), do: sum

  defp parse(num) do
    {parsed_num, _} = Integer.parse(num)
    parsed_num
  end
end
