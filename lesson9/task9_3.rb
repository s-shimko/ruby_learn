# Доработать программу из прошлого урока так, чтобы она выводила на экран строку,
# состоящую уже не из звездочек.
# Програмаа должна склеивать строку из строк, заданных пользователем.
# Какую строчку склеиваем?
# Ura!
# Сколько вам строк?
# 5
# Вот ваш результат:
#             Ura!Ura!Ura!Ura!Ura!

def print_number_of_strings(string,number_of_strings)
  number_of_strings.times { print string  }
end

def print_number_of_strings2(string,number_of_strings)
  ary = []
  i = 0
  while i < number_of_strings
    ary << string
    i += 1
  end
  return ary.each { |el| print el }
end

def print_string(string,number_of_strings)

  result_string = ""
  i = 0
  while i < number_of_strings
    result_string += string
    i += 1
  end
  puts result_string
end

puts "Какую строчку склеиваем?"
string = gets.chomp.to_s

puts "Сколько вам строк?"
number_of_strings = gets.chomp.to_i

puts "Вот ваш результат:"
print_number_of_strings(string,number_of_strings)
puts
print_number_of_strings2(string,number_of_strings)
puts
print_string(string,number_of_strings)

