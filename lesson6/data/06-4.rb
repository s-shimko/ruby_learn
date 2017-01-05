# encoding: utf-8


# объявим массив человеческих названий позиций
names = ["Камень", "Ножницы", "Бумага"] 
# на нулевой позиции - камень, на 1-й ножницы, на 2-й бумага

# вызов rand(3) дает случайное число от 1 до 3, не считая 3 (см. документацию)
computer_choice = rand(3) 
 
puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"

# записываем выбор пользователя из консоли, преобразуя в число
user_choice = gets.to_i

# выводим человеческое название варианта выбранного компом
puts "Компьютер выбрал: " + names[computer_choice]

# выводим человеческое название варианта выбранного человеком
puts "Вы выбрали: " + names[user_choice]

# в наших числах логика игры такая:
# 0 бьет 1, 1 бьет 2, но 2 бьет 0

if user_choice == computer_choice
	puts "Ничья"
end

if user_choice == 0 && computer_choice == 1 # у вас 0-камень И у компьютера 1-ножницы
	puts "Победили Вы"
end

if user_choice == 0 && computer_choice == 2 # у вас 0-камень И у компьютера 2-бумага
	puts "Победил Компьютер"
end

if user_choice == 1 && computer_choice == 0 # и так далее...
	puts "Победил Компьютер"
end

if user_choice == 1 && computer_choice == 2 
	puts "Победили Вы"
end

if user_choice == 2 && computer_choice == 0 
	puts "Победили Вы"
end

if user_choice == 2 && computer_choice == 1 
	puts "Победил Компьютер"
end


