defmodule ChecksumTest do
  use ExUnit.Case
  doctest Checksum

  setup do
    {
      :ok, spreadsheet: [
        [5, 1, 9, 5],
        [7, 5, 3],
        [2, 4, 6, 8]
      ]
    }
  end

  test "calculate/1 for the sample spreadsheet", %{spreadsheet: spreadsheet} do
    assert Checksum.calculate(spreadsheet) == 18
  end
end
