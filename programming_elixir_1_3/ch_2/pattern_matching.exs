# PatternMatching-1
# Which of the following will match?
a = [1, 2, 3] # Match
a = 4 # Match
4 = a # Match
# [a, b] = [1, 2, 3] -- Will not match, no match to right hand side
a = [[1, 2, 3]] # Match
[a] = [[1, 2, 3]] # Match
# [[a]] = [[1, 2, 3]] --  Will not match, no match to right hand side

# PatternMatching-2
# Which of the following will match?
# [a, b, a] = [1, 2, 3] -- Will not match, the variable a has already been bound in this match
# [a, b, a] = [1, 1, 2] -- Will not match, again, the variable a has already been bound in this match
[a, b, a] = [1, 2, 1] # Match, variable a is bound, then pattern matched in the second apperance

# PatternMatching-3
# The variable a is bound to the value 2. Which of the following will match?
# [ a, b, a ] = [1, 2, 3] -- Will not match, the variable a cannot bound twice in a match
# [a, b, a] = [1, 1, 2] -- Will not match, we've been over this!
a = 1 # Match, a gets rebound
# ^a = 2 -- Will not match, a was rebound to the value 1
^a = 1 # Match
^a = 2 - a # Match
