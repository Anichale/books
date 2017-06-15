defmodule Import do
  def func1 do
    List.flatten [1,[2,3],4]
  end
  def func2 do
    import List, only: [flatten: 1] # lexically scoped
    flatten [5,[6,7],8]
  end
end

defmodule Alias do
  def compile_and_go(source) do
    alias My.Other.Module.Parser, as: Parser
    alias My.Other.Module.Runner, as: Runner
    # or alias My.Other.Module.Runner.{Parser, Runner}
    source
    |> Parser.parse()
    |> Runner.execute()
  end
end
