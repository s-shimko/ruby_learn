# Напишите метод, который будет принимать в качестве параметра Радиус, а возвращать в качестве результата —
# площадь круга с этим радиусом.
# Программа должна спросить у пользователя в консоли пару раз радиус и вывести площади кругов на экран.
#
#     Введите радиус круга:
#                        10
# Площадь круга: 314.159
# Введите радиус второго круга:
#                            5.7
# Площадь второго круга: 102.0702591

@pi = Math::PI.to_f

def calculate_circle_square(radius)
  return (@pi * (radius * radius)).round(4)
end

puts "Введите радиус круга:"
radius = gets.chomp.to_f
puts "Площадь круга: " + calculate_circle_square(radius).to_s

puts "Введите радиус второго круга:"
radius = gets.chomp.to_f
puts "Площадь второго круга: " + calculate_circle_square(radius).to_s

