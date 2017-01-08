# encoding: utf-8

# объявляем функцию, выводящую строку, склеенную из number числа других строк
def print_stars(number, stroka)
	# объявляем пустую строку, в которую будем добавлять другие строки
	result_string = ""
	# счетчик повторений
	counter = 0 

	# цикл длиной в number итераций, на каждой добавляем в строку значение stroka
	while counter < number do
		result_string += stroka
		counter += 1 # обновляем счетчик
	end

	puts result_string   # вывели полученную строку на экран
end

puts "Какую строчку склеиваем?"
stroka = gets.encode("UTF-8").chomp

puts "Сколько вам строк?"
stars = gets.to_i # запрашиваем с консоли, преобразуем в целое число (to_i)

puts "Вот ваш результат: " 
print_stars(stars, stroka)

