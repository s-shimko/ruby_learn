# encoding: utf-8

# объявили пустой массив
array = []

puts "Какой длины будет массив случайных чисел?"
number = gets.to_i

# счетчик итераций в цикле
index = 0

# цикл должен сделать number число итераций
while index < number do
	array << rand(100) # записываем число в массив
	index += 1  # увеличиваем счетчик итераций
end

# выводим получившийся массив
puts array.to_s

# объявляем переменную которая будет хранить максимальное 
# найденное в массиве значение
max_value = 0

# пробегаем по готовому массиву и ищем самое большое число
for item in array do
	if item > max_value	# если текущий элемент больше макс. значения
		# то макс. значение обновляется и становится
		# теперь равно новому наибольшему значению
		max_value = item 
	end
end

# в итоге в max_value останется наибольшее из просмотренных в массиве чисел
puts "Самое большое число:"
puts max_value.to_s