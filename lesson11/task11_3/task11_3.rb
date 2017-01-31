require_relative './man.rb'

puts "We're have 2 men"

man1 = Man.new("df","ddfd")
man2 = Man.new("sdf","sdf")

puts "First: #{man1.name}"
puts "His age: #{man1.age}"
puts "Second: #{man2.name}"
puts "His age: #{man2.age}"

