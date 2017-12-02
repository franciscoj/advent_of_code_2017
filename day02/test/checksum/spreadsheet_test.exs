defmodule SpreadsheetTest do
  use ExUnit.Case
  alias Checksum.Spreadsheet

  setup do
    path = "#{File.cwd!}/test/fixtures/spreadsheet.txt"
    {:ok, path: path }
  end

  test "read/1 it reads the spreadsheet into a list", %{path: path} do
    assert Spreadsheet.read(path) == [
      [5, 1, 9, 5],
      [7, 5, 3],
      [2, 4, 6, 8]
    ]
  end
end
