From http://backend.turing.io/module1/lessons/pseudocoding101

# Pseudocoding 101

## Writing

Algorithm to tie shoes

Assumptions:
Shoes are already on my feet
Shoes are already laced
Shoes are already untied

Steps:
1. unravel the laces and place the one the laces in the appropriate hands. (When the laces are laying down the one that falls to the left goes in the left hand and vice versa)
1. Perform an overhand knot
1. Take the Right string and form a loop
1. Take the left string and go around the loop horizontally
1. Take the left string and push a loop through the small loop that was made in the previous step.
1. Pull the loops to tighten to an appropriate tightness.

## An Iterative Process

1. How will you know when the problem is solved? (Identify the big-picture goal)
1. How do you want to use the software? (Identify the “interface”)
1. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
1. How do we achieve this goal? (Sketch an algorithm using pseudocode)
1. Implement it (do programming)
1. Is the whole problem (from step 1) solved? If not, return to 3.


## Additional Exercises

### Common words
Problem: I have a text document and want to know “What are the three most common words in the text?”  
Extension: Let’s exclude the following: I, you, he, she, it, we, they, they, a, an.  

1. How will you know when the problem is solved? (Identify the big-picture goal)
  * When I know which 3 words were used the most
2. How do you want to use the software? (Identify the “interface”)
  * Command Line script that will take a .txt file as an argument
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Turn the document into a collection of words
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Create a script that would take the document as an argument
  * The script would `String.split(\s)` && `String.split(\n)`
  * The script would throw away any non-letter characters
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
    * Exclude the following: I, you, he, she, it, we, they, they, a, an.
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
    * Create second array of  [I, you, he, she, it, we, they, they, a, an]
    * Subtract second array from words array.
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Take the collection of words and count them
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * We have an array of words that we want to turn into a hash
    * Create a new hash called counts
    * iterate over the array of words and add one to the hash array for each word
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Order the Hash so the most used words are in descending order
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * sort_by value then reverse so they are in descending order
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Take the top 3 results
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Array[0..2]

### Odds & Evens
Problem: I have a file with 100 numbers. I want to create two new files: one with all the odds and one with all the evens.  
Extension: Don’t allow duplicates in the output.  

Assumptions: The file is row delimited.
If that is not correct then find the correct delimiter and import accordingly

1. How will you know when the problem is solved? (Identify the big-picture goal)
  * When I have two documents:
    * 1 with only evens and no duplicates
    * 1 with only odds and no duplicates
1. How do you want to use the software? (Identify the “interface”)
  * Command Line script that will take a .csv file as an argument
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Import csv into an array of numbers
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Using CSV file to open the document
  * Iterate over each row
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Remove duplicates
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * array.uniq
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Iterate over the array and create separate arrays for odds and evens
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Create an odd and even array
  * shovel over the odds and evens to their separate arrays
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Export each array to its own csv
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Use ruby's csv functionality to spit out a new csv file for each array


### Lats & Longs
Problem: I have a file with 100 latitude/longitude pairs. Find the point that’s closest to the north pole.
Extension: Find the one closest to the magnetic north pole.

Assumptions: The north pole has a latitude of 0

1. How will you know when the problem is solved? (Identify the big-picture goal)
  * Have a single lat and long that is the closest to the north pole
1. How do you want to use the software? (Identify the “interface”)
  * Command Line script that will take a .csv file as an argument
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Import csv into an array of arrays where the first element in the sub array is lat and the second element is long.
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * Using CSV file to open the document
  * Iterate over each row
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * sort the array of arrays so the lats are in ascending order
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * array.sort will sort by the first element of an array
Using the assumption that a longitude of 0 is the north pole and that latitude doesn't matter since distance in this case would be equal...
3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
  * Select the first item in the array and return it
4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
  * puts array[0]


Extension: Find the one closest to the magnetic north pole.
Assumption: magnetic north pole is fixed and we are not looking it up even though it changes each year
Starting Point: We have an array of [lat, long]

  3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
    * calculate distance for each pair from magnetic north pole
  4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
    * Find formula and copy and paste it here :)
    * Add as additional field to array [distance, lat, long]
  3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
    * sort the array of arrays so the lats are in ascending order by distance
  4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
    * array.sort will sort by the first element of an array
  3. What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
    * Select the first item in the array remove the distance and return it
  4. How do we achieve this goal? (Sketch an algorithm using pseudocode)
    * array[0][1,2]
