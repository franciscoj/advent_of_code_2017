defmodule Mix.Tasks.CalculateDivisorChecksum do
  use Mix.Task

  def run(_) do
    "#{File.cwd!}/lib/assets/spreadsheet.txt"
    |> Checksum.Spreadsheet.read()
    |> Checksum.Divisible.calculate()
    |> IO.inspect
  end
end

