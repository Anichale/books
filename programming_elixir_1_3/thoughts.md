### Chapter 1 - Take the Red Pill
- sad to say that this is my second time reading Chapter 1. I had read up to chapter 14 before convincing myself that I should focus studying on things pertinent to my job, which in hindsight is a fantastic way to burn out and foster contempt in your soul.
- elixir is a beautiful language that has so many smart people buzzing around it, its allure for a shiny-chaser like myself is obvious. I still feel like I haven't practiced the language well enough to be proficient with the language and create practical things, but I desperately want to.
- dave thomas is a fantatstic writer of things technology
- functional programming is sexy
- im excited for the iex repl, there is a lot of power in that
- > Even if it is work, programming should be fun

### Chapter 2 - Pattern Matching
- pattern matchings similarity to algebraic equality
- pattern matching is a fundamental building block of how things work in elixir/erlang

### Chapter 3 - Immutability
- immutability is another fundamental building block of inner workings in the language
- > ...fits in nicely with the idea that programming is about transforming data
- immutable implementation for data structures is efficient as it reuses what it can before creating a copy, in addition to how it handles garbage collection
- processes in elixir have exclusive heaps and manage them individually

### Chapter 4 - Elixir Basics
- tuples seem to be very important transportation types, most of the examples i've seen of responses from libraries return a tuple
- types in elixir all have deep ties to both pattern matching and immutability and i don't think they would be as powerful without those two underlying concepts. Lists and Maps in particular
- Lists being immutable makes iteration over them interesting. typically in javascript immutable iteration, each iteration would return a new copy of the iterable, or at least a shallow copy of the array. because elixirs' List data structure is immutable, but reusing pieces of the array, recursion seems to be a great fit to avoid creating needless copies.
- pattern matching is amazing for Maps.
  - `response_types = %{ {:error, :busy} => :retry, {:error:, :enoent} => :fatal }`
  - `response_types[{:error, :busy}] #=> :retry`

### Chapter 5 - Anonymous Functions
- pattern matching fundamental part of functions
- tuples seem to be typical response data types for most internal functions or libs
- underlying erlang libs are always atoms: `:file`
- having a young ecosystem is a valid reason for not pursuing a language or framework, but if you can interop erlang effectively, there seems to be a lot you can do it with it
- the & Notation is another great example of elixir being a well-design and fully-featured language
- i like this - `divrem = &{ div(&1, &2), rem(&1, &2) }` particularly because tuples are good response types and this packages them nicely

### Chapter 6 - Modules and Named Functions
- using modules and functions as clauses makes recursion feel cleaner
- guards make pattern matching look more explicit
- having erlang libraries around to utilize can be very powerful. Although I'm sure most use cases are covered by the standard Elixir modules

### Chapter 7 - Lists and Recursion
- recursion and pattern matching go hand in hand like peas and carrots
- the pipe character in lists is one of my favorite tools, i wish every language had something similar
- reimplementing typical array/list like methods like map and reduce is a great functional exercise, and it makes you appreciate the work that goes into the tools that can be taken for granted in any language
- pattern matching and recursion as core tools of the language force you to think differently about implementation, especially coming from imperative-style languages

### Chapter 8 - Maps, Keyword Lists, Sets, and Structs
- structs can be useful to enforce data shapes or requirements, but can be easily abused in an object-oriented fashion so it should be used with caution and consideration
- the Access module is an interesting functional approach to accessing the data structures in elixir, apposed to typical dot-notation or bracket-notation that can normally be found in OOP languages. It forces you, like most of the Elixir language, to re-map existing mental models of how we treat data.

### Chapter 10 - Processing Collections--Enum and Stream
- recursion is the backbone of iteration/enumeration in elixir, and pattern matching is critical to handling recursion
- streams primarily provide an lazy way to iterate instead of Enums which are evaluated immediately. streams also make iteration pipelines easy to read and easy to compose
- streams seem to be much more useful/better than Enums... I think I would use them wherever they are interchangeable
- dank-o-nacci:
```elixir
  Stream.unfold({0,1} fn {f1, f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(15)
```
