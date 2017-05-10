defmodule Factorial do
  def of(0), do: 1 # First clause, base recursive cas
  # def of(n), do: n * of(n-1) # Second clause matches everything besides base case, unwinds after receiving value from first clause
  def of(n) when n > 0 do # protective guard to prevent negative numbers
    n * of(n-1)
  end
end

defmodule BadFactorial do
  def of(n), do: n * of(n-1) # Infinite loop, because anchor clause is never reached
  def of(0), do: 1
end
