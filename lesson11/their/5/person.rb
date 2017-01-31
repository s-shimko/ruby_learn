# Объявли класс человек
class Person

	# у конструктора два параметра: имя и фамилия
	# создать объект данного класса можно будет только задав эти аргументы
	def initialize(first_name, last_name)
		# создаем поле возраст и задаем егу случайное значение от 1 до 100
		@vozrast = rand(100) + 1
		# и поле @vozrast со своим уникальным значением будет 
		# принадлежать конкретному объекту данного класса

		# поля, хранящие имя и фамилию данного объекта
		@first_name = first_name
		@last_name = last_name

		# объявили поле, где хранится любимый фильм
		@best_film = nil
	end

	# метод возвращает значение возраста 
	def vozrast
		return @vozrast
	end

	# метод возвращает полное имя данного объекта
	def full_name
		return @first_name + " " + @last_name
	end

	# метод, записывающий новое значение в поле @best_film
	def set_film(film)
		@best_film = film
	end

	# метод, возвращающий любимый фильм человека
	def get_film
		return @best_film
	end
end
