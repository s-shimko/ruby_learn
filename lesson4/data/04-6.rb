# encoding: utf-8

# Сгенерим случайное число от 0 до 10 тем же методом rand
if (rand(11) == 10)
  # Если случилось чудо и из 11 вариантов (0,1,2,3,4,5,6,7,8,9,10) выпал наибольший...
  puts "Монета встала на ребро"
else
  # Если чуда не произошло, снова выбираем один из двух вариантов
  if (rand(2) == 1)
    puts "Выпала решка"
  else
    puts "Выпал орел"
  end
end