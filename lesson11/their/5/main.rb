# encoding: utf-8
# 
# ВНИМАНИЕ: помните, что программу нужно запускать, находясь в той же папке,
# что и сама программа. 
# Для этого в консоли нужно сперва перейти в эту папку командой:
# 	cd  путь_к_папке_где_лежит_программа
# 


# подключили классы
require "./film.rb"
require "./person.rb"

puts "Введите фамилию режиссера:"
# запоминаем режиссера в переменную
director_name = gets.encode("UTF-8").chomp

# объявляем пустой массив, куда будем добавлять фильмы
films = []

while films.size < 3 do 	# пока размер массива меньше трех
	# будем спрашивать название очередного фильма
	puts "Введите какой-нибудь его фильм:"

	# записывать его в переменную,
	film_name = gets.encode("UTF-8").chomp

	# создавать новый фильм этого режиссера
	film = Film.new(film_name, director_name)

	# и наконец добавлять получившийся фильм в массив
	films << film
end

# создадим трех человек
person1 = Person.new("Сергей", "Безруков")
person2 = Person.new("Саша", "Грэй")
person3 = Person.new("Мадонна", "")

# каждому зададим случайный фильм из массива фильмов:
person1.set_film(films.sample)
person2.set_film(films.sample)
person3.set_film(films.sample)

puts
# выводим результаты для каждого человека:
puts person1.full_name	# сначала его имя

# затем достаем через метод get_film его любимый фильм и у этого фильма спрашиваем title
puts "с любимым фильмом: " + person1.get_film.title 

# повторяем для остальных людей
puts person2.full_name	
puts "с любимым фильмом: " + person2.get_film.title 

puts person3.full_name	
puts "с любимым фильмом: " + person3.get_film.title 
