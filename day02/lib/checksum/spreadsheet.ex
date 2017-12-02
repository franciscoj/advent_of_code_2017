defmodule Checksum.Spreadsheet do
  def read(path) do
    path
    |> File.read()
    |> extract_lines()
    |> extract_lists()
  end

  defp extract_lines({:ok, content}) do
    content
    |> String.split("\n")
    |> remove_empty_string
  end

  defp extract_lists(lines), do: lines |> Enum.map(&parse_line/1)

  defp parse_line(line) do
    line
    |> String.split("\t")
    |> remove_empty_string()
    |> Enum.map(&parse/1)
  end

  defp parse(string) do
    {num, _} = Integer.parse(string)
    num
  end

  defp remove_empty_string(list) do
    list |> Enum.reject(&(&1 == ""))
  end
end
