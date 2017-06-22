defmodule MyList do
  def add([], _x), do: []
  def add([ head | tail ], x), do: [ head + x | add(tail, x) ]

  @phoentic_char_begin 97
  @phoentic_char_end 123
  def caesar([], _n), do: []
  def caesar([ head | tail ], n), do: [ _caesar_wrap(head, n) | caesar(tail, n) ]
  defp _caesar_wrap(char, n) when char + n < @phoentic_char_end, do: char + n
  defp _caesar_wrap(char, n) when char + n >= @phoentic_char_end do
    with overflow = (char + n) - @phoentic_char_end,
    do: @phoentic_char_begin + overflow
  end

  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def mapsum([], _func), do: 0
  def mapsum([ head | tail ], func) do
    func.(head) + mapsum(tail, func)
  end

  # method name 'max' conflicts with Kernel module
  def maxx(list), do: _maxx(list, 0)
  defp _maxx([], cur), do: cur
  defp _maxx([ head | list ], cur) when head > cur, do: _maxx(list, head)
  defp _maxx([ head | list ], cur) when head < cur, do: _maxx(list, cur)
  defp _maxx([ _head | list ], cur), do: _maxx(list, cur)

  def reduce([], acc, _), do: acc
  def reduce([ head | tail ], acc, func), do: reduce(tail, func.(head, acc), func)

  def span(from, to) when from < to, do: List.flatten [ from, span(from + 1, to) ]
  def span(from, to) when from > to, do: List.flatten [ from, span(from - 1, to) ]
  def span(from, to) when from == to, do: to

  def square([]), do: []
  def square([ head | tail ]), do: ([ head * head | square(tail) ])

  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)

  def sum_without_accumulator([ total ]), do: total
  def sum_without_accumulator([ head | tail ]) do
    condense_add(head, tail)
    |> sum_without_accumulator
  end

  defp condense_add(value, [ head | tail ]), do: [ value + head | tail ]
end
