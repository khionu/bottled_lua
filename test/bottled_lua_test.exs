defmodule BottledLuaTest do
  use ExUnit.Case
  doctest BottledLua

  test "greets the world" do
    assert BottledLua.hello() == :world
  end
end
