# Объявли класс Фильм
class Film

	# у конструктора два параметра: название фильма и фамилия режиссера
	def initialize(title, director)
		# поля, хранящие эти данные
		@title = title
		@director = director
	end

	# метод возвращает название 
	def title
		return @title
	end

	# метод возвращает имя режиссера
	def director
		return @director
	end
end
