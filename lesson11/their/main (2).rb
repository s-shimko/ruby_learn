# encoding: utf-8
# 
# ВНИМАНИЕ: помните, что программу нужно запускать, находясь в той же папке,
# что и сама программа. 
# Для этого в консоли нужно сперва перейти в эту папку командой:
# 	cd  путь_к_папке_где_лежит_программа
# 


# подключили класс
require "./person.rb"

# Создали два разных объекта данного класса
person1 = Person.new("Билл", "Гейтс")
person2 = Person.new("Стас", "Михайлов")

# выводим на экран информацию о людях
puts "У нас есть два человека"
puts "Одного зовут " + person1.full_name
puts "И ему " + person1.vozrast.to_s

puts "Другого зовут " + person2.full_name
puts "И ему " + person2.vozrast.to_s