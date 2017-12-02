defmodule Mix.Tasks.CalculateChecksum do
  use Mix.Task

  @shortdoc "Solves day 2 - part 2"
  def run([file_path]) do
    file_path
    |> Checksum.Spreadsheet.read()
    |> Checksum.calculate()
    |> IO.inspect
  end
end
