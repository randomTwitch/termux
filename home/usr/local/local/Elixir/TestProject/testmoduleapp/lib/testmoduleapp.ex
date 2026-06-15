defmodule Testmoduleapp do
  @moduledoc """
  Documentation for `Testmoduleapp`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Testmoduleapp.hello()
      :world

  """
  def hello do
    :world
  end

  #use Application
  #import Kernel
  #import :elixir
  #use System
  #def start do
  # {:ok, _} = Application.ensure_all_started(:testmoduleapp)
  # :ok
  #end
  #def start(_type,[]) do
  #IO.puts "starting"
  #[:ok,pid(0,21,23)]
  #end
  #File.cd "/data/data/com.termux/files/usr/local/Elixir/TestProject/testmoduleapp/_build/dev/lib/timex/ebin/"
  
  use Timex
  IO.puts Timex.now;
end
