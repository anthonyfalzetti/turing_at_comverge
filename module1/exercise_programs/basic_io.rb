#!/usr/bin/env ruby
puts 'Type your message:'
message = gets.chomp
puts message.length.even? ? 'EVEN!' : 'ODD!'
