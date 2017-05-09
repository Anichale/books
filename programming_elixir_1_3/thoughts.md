### Chapter 1
- sad to say that this is my second time reading Chapter 1. I had read up to chapter 14 before convincing myself that I should focus studying on things pertinent to my job, which in hindsight is a fantastic way to burn out and foster contempt in your soul.
- elixir is a beautiful language that has so many smart people buzzing around it, its allure for a shiny-chaser like myself is obvious. I still feel like I haven't practiced the language well enough to be proficient with the language and create practical things, but I desperately want to.
- dave thomas is a fantatstic writer of things technology
- functional programming is sexy
- im excited for the iex repl, there is a lot of power in that
- > Even if it is work, programming should be fun

### Chapter 2
- pattern matchings similarity to algebraic equality
- pattern matching is a fundamental building block of how things work in elixir/erlang

### Chapter 3
- immutability is another fundamental building block of inner workings in the language
- > ...fits in nicely with the idea that programming is about transforming data
- immutable implementation for data structures is efficient as it reuses what it can before creating a copy, in addition to how it handles garbage collection
- processes in elixir have exclusive heaps and manage them individually

### Chapter 4
- tuples seem to be very important transportation types, most of the examples i've seen of responses from libraries return a tuple
- types in elixir all have deep ties to both pattern matching and immutability and i don't think they would be as powerful without those two underlying concepts. Lists and Maps in particular
- Lists being immutable makes iteration over them interesting. typically in javascript immutable iteration, each iteration would return a new copy of the iterable, or at least a shallow copy of the array. because elixirs' List data structure is immutable, but reusing pieces of the array, recursion seems to be a great fit to avoid creating needless copies.
- pattern matching is amazing for Maps.
  - `response_types = %{ {:error, :busy} => :retry, {:error:, :enoent} => :fatal }`
  - `response_types[{:error, :busy}] #=> :retry`
