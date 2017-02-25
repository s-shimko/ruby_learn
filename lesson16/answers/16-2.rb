# encoding: utf-8

# Просим пользователя ввести два числа
# И конвертируем их уже в числа с плавающей точкой методом to_f
puts "Первое число:"
number1 = STDIN.gets.chomp.to_f
puts "Второе число:"
number2 = STDIN.gets.chomp.to_f

# Просим пользователя указать операцию с помощью специального значка
puts "Выберите операцию (+ - * /)"
operation = STDIN.gets.chomp

# Выводим результат с помощью case
puts "Результат:"

case operation
	when "+"
	  # Если puts передать одно число в качестве параметра, to_s можно не ставить
	  puts number1 + number2
	when "-"
	  puts number1 - number2
	when "*"
	  puts number1 * number2
	when "/"
	  # Делить число с плавающей точкой на ноль можно, так что работаем как обычно
	  puts number1 / number2
	else
	  # Если пользователь ввёл абракадабру вместо операции, сообщим ему об этом
	  puts "Нет такой операции"
end
