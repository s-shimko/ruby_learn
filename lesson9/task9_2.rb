# Написать метод, который выводит на экран строку, состоящую из звездочек *.
# Длина строки (количество звездочек) должно быть параметром метода.
# Программа должна спросить у пользователя в консоли длину строки и вывести
# на экран нужную строчку используя этот метод.
#        Сколько вам звезд на погоны?
# 17
# Вот ваши звезды :)
# *****************

def print_string_from_stars(number_of_stars)
  number_of_stars.times { print "*" }
end

def print_string_from_stars2(number_of_stars)
  arr = []
  i = 1
  while i <= number_of_stars
    arr << "*"
    i += 1
  end
  arr.each { |el| print el }
end

def print_string_from_stars3(number_of_stars)
  string = ""
  while string.length < number_of_stars
    string += "*"
  end
  puts string
end

puts "Сколько вам звезд на погоны?"
number_of_stars = gets.chomp.to_i

puts "Вот ваши звезды :)"
print_string_from_stars(number_of_stars)
puts
print_string_from_stars2(number_of_stars)
puts
print_string_from_stars3(number_of_stars)
