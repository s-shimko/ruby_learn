# Написать программу, которая выводит массив чисел от 1 до N. И выводит сумму всех чисел этого массива.
# Число N спрашивается у пользователя из консоли.
#     Введите N
# 7
# [1, 2, 3, 4, 5, 6, 7]
# Сумма чисел: 28

puts "Введите N"
n = gets.chomp.to_i

res = 0
ary = []
i = 1
while i <= n do
  ary << i
  res +=i
  i += 1
end

puts ary.to_s

# res = 0
# for i in 0...n do
#   res = res + ary[i]
# end
puts "Сумма чисел: " + res.to_s

# Второй способ вычисления суммы
res2 = ary.inject(0) { |res, el| res + el}
puts "Второй способ"
puts "Сумма чисел: " + res2.to_s