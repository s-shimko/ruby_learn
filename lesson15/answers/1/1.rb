# encoding: utf-8

# Выводим значения чисел pi и e
pi = Math::PI
e = Math::E

puts "Число e = #{pi.to_s}"
puts "Число pi = #{e.to_s}"

# Выводим сумму синуса и косинуса числа pi
puts "Синус pi + косинус pi = #{(Math.sin(pi) + Math.cos(pi)).round.to_s}"
