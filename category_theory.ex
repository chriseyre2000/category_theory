defmodule CategoryTheory do
  def identity(value), do: value

  def compose(first, second) do
    fn -> second.(first.(&1)) end
  end
end
