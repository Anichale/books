# Functions-1
# list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
list_concat = fn a, b -> a ++ b end
IO.inspect list_concat.([:a, :b], [:c, :d])

# sum.(1,2,3) #=> 6
sum = fn a, b, c -> a + b + c end # This can be refactored to accept any arity by adding all arguments
IO.puts sum.(1,2,3)

# pair_tuple_to_list.( {1234, 5678 } ) #=> [ 1234, 5678 ]
pair_tuple_to_list = fn ({ a, b }) -> [ a, b ] end
IO.inspect pair_tuple_to_list.( {1234, 5678 } )


# Functions-2
# Pattern matching arguments for different body blocks
print_fb = fn
  (0, 0, _)   -> "FizzBuzz"
  (0, _, _)   -> "Fizz"
  (_, 0, _)   -> "Buzz"
  (_, _, arg) -> arg
end

IO.puts print_fb.(0, 0, 3) #=> "FizzBuzz"
IO.puts print_fb.(0, 2, 1) #=> "Fizz"
IO.puts print_fb.(1, 0, 6) #=> "Buzz"
IO.puts print_fb.(5, 4, 9) #=> 9


# Functions-3
fizz_buzz = fn x -> print_fb.(rem(x, 3), rem(x, 5), x) end

IO.puts fizz_buzz.(10)
IO.puts fizz_buzz.(11)
IO.puts fizz_buzz.(12)
IO.puts fizz_buzz.(13)
IO.puts fizz_buzz.(14)
IO.puts fizz_buzz.(15)
IO.puts fizz_buzz.(16)
#=> Buzz, 11, Fizz, 13, 14, FizzBuzz, 16


# Functions-4 Currying!
prefix = fn p ->
  fn name -> "#{p} #{name}" end
end

agent = prefix.("James").("Bond")
IO.puts agent #=> James Bond


# Functions-5
# Rewrite the following with the & operator
# Enum.map [1,2,3,4], fn x -> x + 2 end
Enum.map [1,2,3,4], &(&1 + 2)
# Enum.each [1,2,3,4], fn x -> IO.inspect x end
Enum.map [1,2,3,4], &(IO.inspect(&1))
