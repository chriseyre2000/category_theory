defmodule CategoryTheory do
  def identity(value), do: value

  def compose(first, second) do
    fn arg -> second.(first.(arg)) end
  end
end
