#!/usr/bin/ruby
ready_to_quit = false
puts 'HELLO, THIS IS A GROCERY STORE!'

input = gets
counter = 0
until ready_to_quit
  if input == "\n"
    puts 'HELLO?!'
    input = gets
  elsif input.chomp == 'GOODBYE!'
    counter += 1
    if counter == 2
      ready_to_quit = true
    else
      puts 'ANYTHING ELSE I CAN HELP WITH?'
      input = gets
    end
  elsif input.chomp == input.chomp.upcase
    puts 'NO, THIS IS NOT A PET STORE'
    input = gets
  elsif input.chomp != input.chomp.upcase
    puts 'I AM HAVING A HARD TIME HEARING YOU.'
    input = gets
  end
end

puts 'THANK YOU FOR CALLING!'
