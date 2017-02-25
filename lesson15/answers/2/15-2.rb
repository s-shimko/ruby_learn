# encoding: utf-8

# Сначала установить библиотеку
# gem install cyrillizer

# Подключаем библиотеку
require 'cyrillizer'

puts "Введите фразу для транслитерации:"

# Сохраняем то, что введёт пользователь в переменную
input = gets.encode("UTF-8").chomp


# выводим результат работы метода to_lat
puts input.to_lat
