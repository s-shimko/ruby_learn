n = gets.chomp.to_s # обычный способ
n = STDIN.gets.chomp # если передаются данные из консоли ARGV[0]
puts n   # вывод введённого с клавиатуры числа
break #выход из массива
number.abs #модуль числа

# добавлять элемент в начало массива
a = [ "b", "c", "d" ]
a.unshift("a")   #=> ["a", "b", "c", "d"]
a.unshift(1, 2)  #=> [ 1, 2, "a", "b", "c", "d"]

# передача параметра через командную строку
argument = ARGV[0]  #вызов через $ruby argument.rb 1
if argument == "1"
  puts 'You 1'
else
  puts 'Hello'
end






