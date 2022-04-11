defmodule ExDeploySpecsTest do
  use ExUnit.Case
  doctest ExDeploySpecs

  test "greets the world" do
    assert ExDeploySpecs.hello() == :world
  end
end
