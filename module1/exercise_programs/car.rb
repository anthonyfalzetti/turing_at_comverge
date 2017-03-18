#!/usr/bin/env ruby
class Car
  attr_accessor :color,
                :wheel_count

  def initialize(color, wheel_count)
    @wheel_count = wheel_count
    @color = color
    @started = false
  end

  def start
    if started?
      'BZZT! Nice try, though.'
    else
      @started = true
      'Starting up!'
    end
  end

  def started?
    @started == true
  end

  def horn
    'BEEEEP!'
  end

  def drive(distance)
    "I'm driving #{distance} miles"
  end

  def report_color
    "I am #{color}"
  end
end

my_car = Car.new('', '')
puts my_car.horn
puts my_car.drive(12)
my_car.color = 'purple'
my_car.wheel_count = 18
puts my_car.report_color
puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"
my_second_car = Car.new('', 2)
puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels"

puts my_second_car.start
puts my_second_car.start
