# encoding: utf-8
# 
# ВНИМАНИЕ: помните, что программу нужно запускать, находясь в той же папке,
# что и сама программа. 
# Для этого в консоли нужно сперва перейти в эту папку командой:
#   cd  путь_к_папке_где_лежит_программа
# 

require './body_builder.rb'

# создаем трех качков
body_builder1 = BodyBuilder.new
body_builder2 = BodyBuilder.new
body_builder3 = BodyBuilder.new

# счетчик для циклов прокачки
count = 0

# качаем первому трицепс 5 раз
while count < 5
  body_builder1.pump_muscle("triceps")
  count += 1
end

# сбрасываем счетчик, чтобы повторно его использовать далее
count = 0 

#  качаем первому 7 раз бицуху
while count < 7
  body_builder1.pump_muscle("biceps")
  count += 1
end

#  И так далее проходимся по всем качкам

count = 0

while count < 10
  body_builder1.pump_muscle("deltovidka")
  count += 1
end

count = 0

while count < 10
  body_builder2.pump_muscle("triceps")
  count += 1
end

count = 0

while count < 4
  body_builder2.pump_muscle("biceps")
  count += 1
end

count = 0

while count < 7
  body_builder2.pump_muscle("deltovidka")
  count += 1
end

count = 0

while count < 8
  body_builder3.pump_muscle("triceps")
  count += 1
end

count = 0

while count < 5
  body_builder3.pump_muscle("biceps")
  count += 1
end

count = 0

while count < 4
  body_builder3.pump_muscle("deltovidka")
  count += 1
end

# выводим их на подиум и смотрим что накачали :)

puts "Первый бодибилдер:"
body_builder1.show_muscles
puts

puts "Второй бодибилдер:"
body_builder2.show_muscles
puts

puts "Третий бодибилдер:"
body_builder3.show_muscles
puts
