# Модифицируйте задачу 4-2, сделайте так, чтобы пользователь мог ввести три (да, уже три) числа,
# а затем выведите ему среднее арифметическое этих трёх чисел.
#     Введите число 1:
#     > -23
# Введите число 2:
#     > 42
# Введите число 3:
#     > 5
# Среднее арифметическое: 8


puts "Введите 1ое число: "
num1 = gets.encode("UTF-8").chomp.to_s

puts "Введите 2ое число: "
num2 = gets.encode("UTF-8").chomp.to_s

puts "Введите 3е число: "
num3 = gets.encode("UTF-8").chomp.to_s

avg = (num1.to_i + num2.to_i + num3.to_i)/3
puts "Среднее арифметическое: " + avg.to_s
