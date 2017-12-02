defmodule Mix.Tasks.CalculateChecksum do
  use Mix.Task

  def run(_) do
    "#{File.cwd!}/lib/assets/spreadsheet.txt"
    |> Checksum.Spreadsheet.read()
    |> Checksum.calculate()
    |> IO.inspect
  end
end
