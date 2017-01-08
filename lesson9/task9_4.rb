# Написать метод, который возвращает массив, состоящий из первых N элементов другого массива,
# который передан в метод в качестве параметра.
# Исходный массив может состоять из чисел и быть объявлен в коде программы.
# Число N запрашивается у пользователя.
# Если создаете массив из строк и у вас Windows — не используйте пока в строках русские буквы,
# при выводе на экран они будут отображаться не корректно.
#     Вот какая палка колбасы у нас есть:
#                                      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# Сколько первых элементов вам отрезать?
# 3
# Вот ваша колбаса:
#              [1, 2, 3]
# Вот какая палка колбасы у нас есть:
#                                   [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# Сколько первых элементов вам отрезать?
# 84
# Вот ваша колбаса:
#              [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

ary_original = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def return_modified_array(ary_original, number_elements)

if ary_original.length < number_elements
  number_elements = ary_original.length
end

 #  index = 0
 # result_ary = []
 #  while index < number_elements
 #    result_ary << ary_original[index]
 #    index += 1
 #  end
 #  puts result_ary.to_s
  puts ary_original.take(number_elements).to_s
end

puts " Вот какая палка колбасы у нас есть: "
puts ary_original.to_s

puts "Сколько первых элементов вам отрезать?"
number_elements = gets.chomp.to_i

puts "Вот ваша колбаса:"
return_modified_array(ary_original, number_elements)