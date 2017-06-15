defmodule Module do
  @author "Alexander Anich"
  def get_author do
    @author
  end
end
IO.puts "Module was written by #{Module.get_author}"

defmodule Example do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end
IO.puts "#{Example.second} #{Example.first}" # => two, one
