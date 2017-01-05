# Вспомните задачу 6-2 из прошлого урока. Теперь напишите программу,
# которая перевернет порядок элементов любого исходного массива.
# Переверните массив сами с помощью цикла.
# Не используя встроенные методы reverse или reverse!
# исходный массив:
#            [1, 2, 3, 4, 5, 6, 7]
# новый массив, полученный из исходного:
#            [7, 6, 5, 4, 3, 2, 1]

ary = []
index = 1

puts "Введи длину массива:"
input = gets.chomp.to_i
n = input + 1

while index < n
  ary << index
  index += 1
end

length = ary.size.to_i

puts "Исходный массив: "
puts ary.to_s

for i in 0..(length/2) do
  if n == 3
    temp = ary[i]
    ary[i] = ary[n-2]
    ary[n-2] = temp
    break
  end
  temp = ary[i]
  ary[i] = ary[n-2]
  ary[n-2] = temp
  n -= 1
end

puts "Массив в обратном порядке: "
puts ary.to_s

#===============the other way=================
puts

ary = []
index = 1

puts "Введи ещё раз длину массива:"
input = gets.chomp.to_i
n = input + 1

while index < n
  ary << index
  index += 1
end

puts "Исходный массив: "
puts ary.to_s

ary_rev = []

for index in ary
  ary_rev.unshift(index)
end


puts "Массив в обратном порядке: "
puts ary_rev.to_s
