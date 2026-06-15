# iex in the ./test.ex directory and calling Testmodule.f will load the compiled module .beam file ensure by typing "Elixir.Testmodule" in the command line, Elixir is the top Module :atom name which include all loaded compiled modules .beam files
# elixir ./test.ex #runs code outside of modules stats beam process runs code and stops beam process
IO.puts "test"
# elixirc compiles .ex files to .beam; run iex shell in .beams directory the module is loaded
# elixirc is a sh script that exec elixir sh script with options and arguments
# elixirc ./test.ex #compiles modules macros and for each module makes .beam file compiled module file
defmodule Testmodule do
def f(n \\ 2) when n > 0 do
  n
end
end
