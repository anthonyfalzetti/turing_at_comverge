
From http://backend.turing.io/module1/lessons/strings_and_integers
Learning Goals

# Strings

define "string"

*  a quote (“) followed by zero or more letters, numbers, or symbols and followed by a closing quote of the same type (“).


## Practice
Which of the following are valid strings? Why?

1. " Not a valid string since it is missing the other quote
1. “123” This is a valid string
1. 123 This is not a valid string since it is missing the quotes
1. "@*#%&" This is a valid string This is a valid string
1. hello, world! This is not a valid string since there are no quotes
1. ‘welcome to Turing’ This is a valid string
1. ‘987654321.” This is not a valid string since it starts with a single quote and ends with a double
1. “hot chocolate is the best” This is a valid string

## String Methods

1. capitalize: Will capitalize the first character of a string
1. center: If the width passed in is greater than the length of the string it will create a new string with length of width and the padding so the string is centered.
1. delete: Creates a copy of the string with the passed in characters removed
1. downcase: Converts characters in the string to lowercase.
1. empty?: Returns true if self contains no elements.
1. gsub: Returns a copy of str with the all occurrences of pattern substituted for the second argument.
1. include?: Returns true if the given object is present in self
1. index: Returns the index of the first occurrence of the given substring or pattern (regexp) in str.
1. length: Returns the character length of str.
1. reverse: Reverses all characters in the string.
1. split: Divides str into substrings based on a delimiter, returning an array of these substrings.
1. start_with?: Returns true if str starts with one of the prefixes given.
1. tr: Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str.
1. upcase: Returns a copy of str with all lowercase letters replaced with their uppercase counterparts.
1. ==: Returns whether str == obj

# Integers

## Number Methods
1. round: Round to the nearest integer (by default), returning the result as a BigDecimal.
1. to_f: Converts int to a Float. I
1. to_i: As int is already an Integer, all these methods simply return the receiver.
1. to_s: Returns a string
1. floor: Returns the largest number less than or equal to int in decimal digits
1. ceil: Returns the smallest number than or equal to int in decimal digits
1. abs: Returns the absolute value of int.
1. %: Returns int modulo other
1. ==: Returns whether int == obj
1. >: Returns whether int is greater than obj
1. >=: Returns whether int is greater than or equal to obj
1. even?: Returns whether int is even
1. odd?: Returns whether int is odd
1. next: Returns the Integer equal to int + 1.
1. upto: Loop through the numbers by 1 until reaching the upto number
1. times: Loops through number based upon specified time. 
