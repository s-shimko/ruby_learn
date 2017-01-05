# Вывести на экран три введенных с клавиатуры числа в порядке, обратном их вводу.
# Другими словами, мы ввели с клавиатуры три числа (сначала первое, потом второе и третье),
# и после этого единственное, что нам нужно сделать – это вывести третье, затем второе, затем первое.
#     Введите число 1:
#     1
# Введите число 2:
#     42
# Введите число 3:
#     777
#
# 777
# 42
# 1

puts "Enter 1st number:"
num1 = gets.encode("UTF-8").chomp.to_i
puts "Enter 2nd number:"
num2 = gets.encode("UTF-8").chomp.to_i
puts "Enter 3rd number:"
num3 = gets.encode("UTF-8").chomp.to_i

puts
puts num3.to_s
puts num2.to_s
puts num1.to_s
