n = gets.chomp.to_s # обычный способ
n = gets.encode("UTF-8") # кодировка
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

#methods good practice
1. name method in verb
2. parameters
3. sense

# Способ вычисления суммы элементов массива
res2 = ary.inject(0) { |res, el| res + el}
puts "Второй способ"

# To return the first n elements of an array, use take
arr.take(3) #=> [1, 2, 3]





