require_relative './buratino.rb'

b1 = Buratino.new
b2 = Buratino.new

b1.increase_nose(3)
b2.decrease_nose(2)

puts "First Buratino nose length is: " + b1.nose_length.to_s + " sm"
puts "First Buratino nose length is: " + b2.nose_length.to_s + " sm"