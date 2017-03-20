#!/usr/bin/env ruby

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
