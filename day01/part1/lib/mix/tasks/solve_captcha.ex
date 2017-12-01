defmodule Mix.Tasks.SolveCaptcha do
  use Mix.Task


  @shortdoc "Solves a given inverse captcha to prove you're a machine"

  def run([]), do: IO.puts("You need to add the input as the first parameter")
  def run([input]) do
    input
    |> InverseCaptcha.solve
    |> IO.puts
  end
end
