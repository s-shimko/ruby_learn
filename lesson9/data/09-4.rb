# encoding: utf-8

# Метод, который вернет новый массив, состоящий из первых number элементов
# массива array
# 
# Можно использовать готовый метод take класса Array 
# http://www.ruby-doc.org/core-2.1.4/Array.html#method-i-take
# Но мы для тренировки напишем логику сами.
# 
def first_elements(array, number)
	# объявляем пустой массив, куда будем записывать элементы
	result_array = []
	# счетчик элементов
	counter = 0

	while counter < number do
		# проверка: если длина массива array оказалась меньше, 
		# чем число элементов, которые мы хотим "забрать"
		if array.size <= counter
			break # то просто прерываем этот цикл
		end

		result_array << array[counter]
		counter += 1 # обновляем счетчик
	end

	return result_array   # вернули нужны массив
end

# исходный массив
arr = [1,2,3,4,5,6,7,8,9,10,11]
puts "Вот какая палка колбасы у нас есть: "
puts arr.to_s

puts "Сколько первых элементов вам отрезать?"
number = gets.to_i

puts "Вот ваша колбаса: " 
puts first_elements(arr, number).to_s

