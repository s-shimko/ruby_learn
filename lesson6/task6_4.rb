# Напишите игру "камень - ножницы - бумага". Пользователь вводит свой вариант в консоли и играет
# против компьютера. И видит результат игры. Компьютер должен выбирать случайный вариант.
#
# введите вариант: 0 - камень, 1 - ножницы, 2 - бумага
# 2
# Вы выбрали: Бумага
# Компьютер выбрал: Ножницы
# Победил Компьютер

variants = ["Камень", "Ножницы", "Бумага"]
puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"

your_var = gets.chomp.to_i
puts "Вы выбрали: " + variants[your_var].to_s

pc_var = rand(3)
puts "Компьютер выбрал: " + variants[pc_var].to_s

if your_var == pc_var
  puts "Победила дружба!"
elsif your_var == 0 && pc_var == 1
  puts "Вы победили!"
elsif your_var == 0 && pc_var == 2
  puts "Победил Компьютер!"
elsif your_var == 1 && pc_var == 0
  puts "Победил Компьютер!"
elsif your_var == 1 && pc_var == 2
  puts "Вы победили!"
elsif your_var == 2 && pc_var == 0
  puts "Вы победили!"
elsif your_var == 2 && pc_var == 1
  puts "Победил Компьютер!"
end