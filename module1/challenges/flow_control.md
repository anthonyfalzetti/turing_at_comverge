# Flow Control

### Exercises

1. Basic `puts` / `gets`
Write a simple Ruby program which prompts the user to enter a message, then prints that message to the terminal.
``` Ruby
puts "Type your message:"
message = gets.chomp
puts message
```

1. Basic Branching
Extend your previous program so that if the text the user enters has an even number of letters, it prints “EVEN!”, and if it has an odd number of letters, it prints “ODD!”.
``` Ruby
puts "Type your message:"
message = gets.chomp
message.length.even? ? puts "EVEN!" : puts "ODD!"
```

1. Multi-pronged branching
Write a new program that prompts the user for a message, then, depending on the following conditions, prints an appropriate message:
  * If the message ends with a consonant, print “CONSONANT!”
  * If the message ends with a vowel, print “VOWEL!”
  * If the message ends with a “y”, print “DON’T KNOW!”

``` Ruby
puts 'Type your message:'
vowels = %w(a i o u e)
message = gets.chomp
letter = message[-1]

if vowels.include?(letter)
  puts 'VOWEL!'
elsif letter == 'y'
   puts "DON’T KNOW!"
else
  puts 'CONSONANT!'
end
```

1. Easy Looping
Use a times loop to generate this output:
```
Line
Line
Line
Line
Line
```
``` ruby
5.times{ puts 'Line'}
```

1. Looping with Condition
Build on your answer from the problem above and add an if/else to generate output like this:
``` Ruby
5.times { |number| puts number.even? ? 'Line is even' : 'Line is odd' }
```

1. Three Loops  
Generate the output below using three totally separate implementations (times, while and until):
``` Ruby
5.times { |n| puts "This is my output line #{n}" }

count = 0
while count < 5
  count += 1
  puts "This is my output line #{count}"
end

count = 0
until count == 5
  count += 1
  puts "This is my output line #{count}"
end
```
1. Rando-Guesser:
Write two implementations, one with while and one with until that output the following:
``` ruby
secret_number = rand(10)
guess = rand(10)

while guess != secret_number
  puts "Guess is #{guess}"
  puts 'Guess again!'
  guess = rand(10)
end

puts "Guess is #{guess}"
puts 'You win!'

until guess == secret_number
  puts "Guess is #{guess}"
  puts 'Guess again!'
  guess = rand(10)
end

puts "Guess is #{guess}"
puts 'You win!'
```
