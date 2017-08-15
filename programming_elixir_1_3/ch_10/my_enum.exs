defmodule MyEnum do
  def all?([ head | tail ], func) do
    if func.(head),
    do: all?(tail, func),
    else: false
  end
  def all?([], _func), do: true

  def each([ head | tail ], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _func), do: :ok

  def filter([ head | tail ], func) do
    if func.(head),
    do: [ head | filter(tail, func) ],
    else: filter(tail, func)
  end
  def filter([], _func), do: []

  def split(list, count), do: split(list, count, [])
  def split([ head | tail ], count, acc) when count > 0 do
    split(tail, count - 1, acc ++ [head])
  end
  def split(list, 0, acc),    do: {acc, list}
  def split([], _count, acc), do: {[], acc}

  def take(list, count), do: take(list, count, [])
  def take([head | tail], count, acc) when count > 0 do
    take(tail, count - 1, acc ++ [head])
  end
  def take(_list, 0, acc),                 do: acc
  def take([], count, acc) when count > 0, do: acc
  def take([], _count, _acc),              do: []
end
