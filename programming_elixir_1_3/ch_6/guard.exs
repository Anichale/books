defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{x} is a list"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is an atom"
  end
end

Guard.what_is(45) #=> 45 is a number
Guard.what_is(:atom) #=> atom is an atom
Guard.what_is(["list", "of", "things"]) #=> listofthings is a list
