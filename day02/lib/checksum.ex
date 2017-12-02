defmodule Checksum do
  def calculate(spreadsheet) do
    spreadsheet
    |> Enum.map(&checksum_line/1)
    |> Enum.reduce(0, &+/2)
  end

  defp checksum_line(list), do: Enum.max(list) - Enum.min(list)
end
