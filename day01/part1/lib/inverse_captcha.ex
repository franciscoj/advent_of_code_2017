defmodule InverseCaptcha do
  @moduledoc """
  Solution for part 1 of http://adventofcode.com/2017/day/1
  """
  def solve(input) do
    input
    |> String.codepoints
    |> Enum.map(&parse/1)
    |> sum_valid_digits({0, nil})
    |> extract_sum
  end

  defp sum_valid_digits([first_num | []], {sum, first_num}), do: {sum + first_num, first_num}

  defp sum_valid_digits([_ | []], result), do: result

  defp sum_valid_digits(list, {sum, nil}) do
    sum_valid_digits(list, {sum, hd(list)})
  end

  defp sum_valid_digits([num, num | list], {sum, first_num}) do
    sum_valid_digits([num | list], {sum + num, first_num})
  end

  defp sum_valid_digits([_, num | list], tally) do
    sum_valid_digits([num | list], tally)
  end

  defp extract_sum({sum, _}), do: sum

  defp parse(num) do
    {parsed_num, _} = Integer.parse(num)
    parsed_num
  end
end
