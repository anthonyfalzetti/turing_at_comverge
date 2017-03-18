class Person
  attr_reader :name,
              :birth_year,
              :language,
              :alive

  def initialize(name, birth_year, language, alive)
    @name =       name
    @birth_year = birth_year
    @language =   language
    @alive =      alive
  end

  def age
    Time.now.year - birth_year
  end

  def greet(name)
    puts "Hi, #{name}! Nice to meet you."
  end
end

person1 = Person.new('Anthony', 1987, 'English', true)
puts "Number 1: #{person1}"

person2 = Person.new('Rebekah', 1990, 'English', true)
puts "Number 2: #{person2}"

person3 = Person.new('Leo', 1988, 'Spanish', true)
puts "Number 3: #{person3}"
