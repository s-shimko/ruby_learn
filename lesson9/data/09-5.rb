# encoding: utf-8

# Объявим метод, который проверяет насколько пробное число proba
# близко к загаданному number
def check_number(proba, number)
	if (proba == number) # если номер совпал
		abort "Ура, вы выиграли!" # завершаем программу
	else
		# первый вложенный if, проверка в какую сторону ошибся пользователь
		if (proba > number)
			puts "нужно меньше"
		else
			puts "нужно больше"
		end

		# второй вложенный if – вывод "тепло" или "холодно" 
		if (proba - number).abs < 3
			puts "Тепло"
		else
			puts "Холодно"
		end
	end
end

# случайное число, которое будем отгадывать
number = rand(16)

puts "загадано число от 0 до 15, отгадайте какое?"

# преобразуем то, что ввел пользователь в целое число методом to_i
proba = gets.chomp.to_i

# Вместо повторения когда используем вызов метода 3 раза 
check_number(proba, number)

# перед вызовом метода надо спросить новую попытку
proba = gets.chomp.to_i
check_number(proba, number)

proba = gets.chomp.to_i
check_number(proba, number)

# Если выполнение программы дошло до сюда, значит в метод check_number не прервал выполнение.
# Расскажем пользователю, что же было загадано
puts "В этот раз вам не повезло. Было загадано число " + number.to_s
