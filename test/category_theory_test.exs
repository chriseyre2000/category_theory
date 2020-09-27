defmodule CategoryTheoryTest do
  use ExUnit.Case
  doctest CategoryTheory

  test "check identity works" do
    assert CategoryTheory.identity(42) == 42
  end

  test "Checks that compose works" do
    first = &(&1 + 1)
    second = &(&1 * 3)

    assert CategoryTheory.compose(first, second).(1) == 6
    assert CategoryTheory.compose(second, first).(1) == 4
  end
  
  test "Checks that identity works with compose" do
    first = &(&1 * &1)

    assert CategoryTheory.compose(first, &CategoryTheory.identity/1).(1) == 1
    assert CategoryTheory.compose(&CategoryTheory.identity/1, first).(1) == 1
  end  
end
