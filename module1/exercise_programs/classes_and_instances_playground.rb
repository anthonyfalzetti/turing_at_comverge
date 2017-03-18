#!/usr/bin/env ruby
class Fridge
  attr_reader :brand,
              :tempature,
              :contents

  attr_accessor :color

  def initialize(brand, color, tempature, plugged_in, contents)
    @brand =      brand
    @color =      color
    @tempature =  tempature
    @plugged_in = plugged_in
    @contents =   contents
  end

  def tempature_in_celsius
    (tempature - 32) * 5.0 / 9.0
  end

  def add_item(item)
    @contents << item
  end
end

refrigerator1 = Fridge.new('Maytag', 'white', 36,
                           true,
                           ['leftover pizza', 'yogurt', 'soylent'])
puts "Number 1: #{refrigerator1}"

refrigerator2 = Fridge.new('', 'black', 40, true, [])
puts "Number 2: #{refrigerator2}"

refrigerator3 = Fridge.new('', 'white', 33, false, ['celery'])
puts "Number 3: #{refrigerator3}"
