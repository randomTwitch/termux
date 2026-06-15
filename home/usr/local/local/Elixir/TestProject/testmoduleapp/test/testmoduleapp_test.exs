defmodule TestmoduleappTest do
  use ExUnit.Case
  doctest Testmoduleapp

  test "greets the world" do
    assert Testmoduleapp.hello() == :world
  end
end
