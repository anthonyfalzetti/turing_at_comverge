# Primer on .each
If you had an array of numbers, [1,2,3,4,5,6]
```ruby
numbers = [1, 2, 3, 4, 5, 6]
```
1. How do you print out the doubles of each number? Triples?
```ruby
numbers.map { |n| n * n }
numbers.map { |n| n * n * n }
```
1. How would you only print out the even numbers?
```ruby
numbers.map { |n| print n if n.even? }
```

1. What about the odd numbers?
```ruby
numbers.map { |n| print n if n.odd? }
```
1. How could you create a new array which contains each number multipled by 2?
```ruby
new_array = numbers.map { |n| n * 2 }
```
Given an array of first and last names, e.g. ["Ilana Corson", "Lauren Fazah", "Beth Sebian"]
```ruby
names = ['Ilana Corson', 'Lauren Fazah', 'Beth Sebian']
```
1. How would you print out only first names?
```ruby
names.map { |a| a.split(' ').first }
```
1. How would you print out only last names?
```ruby
names.map { |a| a.split(' ').last }
```
1. How could you print out only the initials?
```ruby
names.each { |a| print a.split(' ').map { |l| l[0] } }
```

1. How can you print out the last name and how many characters are in it?
```ruby
last_names = names.map { |name| name.split(' ').last }
last_names.map { |last_name| puts "last_name: #{last_name.length}" }
```
1. How can you create an integer which represents the total number of characters in all the names?
```ruby
names.inject(0) { |total_length, name| total_length + name.length }
```
Given an array of nested arrays: [['Ilana', 'Corson'], ['Lauren', 'Fazah'], ['Beth', 'Sebian']].
```ruby
names = [['Ilana', 'Corson'], ['Lauren', 'Fazah'], ['Beth', 'Sebian']]
```
1. How would you print out each nested array’s full name?
```ruby
names.map { |na| na.join(' ') }
```
