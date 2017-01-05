# Напишите программу «Монетка»: она генерирует случайное число 0 или 1.
# И выводит на экран «Выпал орел» для нуля или «Выпала решка» для единицы.

orel = "Выпал орел"
reshka = "Выпала решка"


arr = [orel, reshka]

5.times { puts arr.sample }
puts

res = rand(2)
if res == 0
  puts arr[0]
else
  puts arr[1]
end


