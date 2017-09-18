defmodule Countdown do

  def sleep(seconds) do
    receive do
      after seconds*1000 -> nil
    end
  end

  def say(text) do
    spawn fn -> :os.cmd('espeak #{text}') end
  end

  def timer do
    Stream.resource(
      fn -> # the number of seconds to the start of the next minute
        {_hours, _minutes, seconds} = :erlang.time
        60 - seconds - 1
      end,
      fn
        0 ->
          {:halt, 0} # Ends the stream
        count ->
          sleep(1)
          { [inspect(count)], count - 1 }
      end,
      fn _ -> nil end # nothing to deallocate
    )
  end
end
