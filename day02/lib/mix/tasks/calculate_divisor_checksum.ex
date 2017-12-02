defmodule Mix.Tasks.CalculateDivisorChecksum do
  use Mix.Task

  @shortdoc "Solves day 2 - part 2"
  def run([file_path]) do
    file_path
    |> Checksum.Spreadsheet.read()
    |> Checksum.Divisible.calculate()
    |> IO.inspect
  end
end

