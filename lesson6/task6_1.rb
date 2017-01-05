# Объявите в программе два разных массива строк: один, состоящий из нескольких мужских имен,
# другой — из женских.
# Как угодно создайте третий массив так, чтобы он состоял из всех элементов первого и второго массивов
# (т. е. из всех мужских и женских имен), не повторяя эти имена в коде.
# То есть, используя элементы из первых двух массивов.
#        Потом выведите все три массива на экран.
#             Мужчины
# ["Gena", "George", "Misha"]
# Женщины
# ["Katrin", "Liza", "Masha"]
# Все вместе
# ["Gena", "George", "Misha", "Katrin", "Liza", "Masha"]
# Если вы пользуетесь windows, то пока используйте только английские буквы в именах,
# иначе в методе to_s на экран выведется абракадабра. Эту проблему мы решим в будущих уроках.

men = []

men.push("Gena", "George", "Misha")
puts "Men: " + men.to_s

women = []

women.push("Katrin", "Liza", "Masha")
puts "Women: " + women.to_s

all1 = []
men.each { |el| all1 << el}
women.each { |el| all1 << el}
puts "All together 1: " + all1.to_s

all3 = men + women
puts "All together 3: " + all3.to_s

all2 =  men.concat(women)
puts "All together 2: " + all2.to_s

