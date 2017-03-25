defmodule RandomUsernameTest do
  use ExUnit.Case
  doctest RandomUsername

  test "returns a adjective sans options" do
    assert RandomUsername.adjective()
  end

  test "returns a noun sans options" do
    assert RandomUsername.noun()
  end

  test "returns a username sans options" do
    assert RandomUsername.username()
  end
end
