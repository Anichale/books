defmodule Chop do
  @moduledoc """
    Guesses a given number bewteen a given range.
  """
  # Starting point
  def guess(actual, low..high) do
    check(actual, low..high, div(low + high, 2))
  end

  defp check(actual, range, current) when actual > current do
    IO.puts "I tried #{current}, but it is too low."
    guess(actual, current..range.last)
  end

  defp check(actual, range, current) when actual < current do
    IO.puts "It tried #{current}, but it is too high."
    guess(actual, range.first..current)
  end

  # Matches when actual == current
  defp check(_, _, current) do
    IO.puts "It is #{current}."
  end
end

Chop.guess(273, 1..1000)
