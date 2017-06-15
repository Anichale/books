# Find the library functions to do the following, and then use each in iex.

# - Convert a float to a string with two decimal digits. (Erlang)
example_float = 2.45
:erlang.float_to_binary(example_float, decimals: 2)
# - Get the value of an operating-system environment variable. (Elixir)
System.get_env("PATH")
# - Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
Path.extname("attributes.exs")
# - Return the process's current working directory. (Elixir)
System.cwd
# - Convert a string containing JSON into Elixir data structures. (Just find; don't install)
# Poison
# - Execute a command in your operating system's shell
System.cmd "whereis", ["elixir"], into: IO.stream(:stdio, :line)
