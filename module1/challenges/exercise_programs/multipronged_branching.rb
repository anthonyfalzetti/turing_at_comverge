#!/usr/bin/env ruby
puts 'Type your message:'
vowels = %w(a i o u e)
message = gets.chomp
letter = message[-1]

if vowels.include?(letter)
  puts 'VOWEL!'
elsif letter == 'y'
  puts 'DON\'T KNOW!'
else
  puts 'CONSONANT!'
end
