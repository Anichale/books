defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_)     -> "You're a nobody."
    end
  end
end

agent_communicator = Greeter.for("Mr. Bond", "Hello,")

IO.puts agent_communicator.("Mr. Bond") #=> Hello, Mr. Bond
IO.puts agent_communicator.("Alexander Anich") #=> You're a nobody. :*(
