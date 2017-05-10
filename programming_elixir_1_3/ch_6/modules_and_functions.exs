defmodule Times do
  def double(n),    do: n * 2
  def triple(n),    do: n * 3
  def quadruple(n), do: double(double n)

  # Recursive sum of the integers from 1 to n
  def sum(1), do: 1
  def sum(n), do: (n + sum(n-1))

  # Greatest common divisor between two nonnegative integers
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end
