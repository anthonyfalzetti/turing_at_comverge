#!/usr/bin/env ruby
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
