defmodule DivisibleTest do
  use ExUnit.Case
  doctest Checksum

  setup do
    {
      :ok, spreadsheet: [
        [5, 9, 2, 8],
        [9, 4, 7, 3],
        [3, 8, 6, 5]
      ]
    }
  end

  test "calculate/1 for the sample spreadsheet", %{spreadsheet: spreadsheet} do
    assert Checksum.Divisible.calculate(spreadsheet) == 9
  end
end
