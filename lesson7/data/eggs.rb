# encoding: utf-8

# массив яиц, 0 - значит целое, любое другое значение - битое яйцо
eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

# объявляем массив, куда складывать хорошие яйца
good_eggs = []

# инициализируем счетчик битых яиц
broken_count = 0

# цикл по всем элементам массива eggs
for item in eggs do

  # если яйцо плохое
  if (item != 0)
    broken_count += 1 # счетчик плохих увеличивается на 1
  else
    good_eggs << 0 # если хорошее, яйцо добавляется в другой лоток
  end
end

puts "Битых яиц оказалось " + broken_count.to_s + " из " + eggs.size.to_s

puts "Вот лоток с хорошими яйцами"
puts good_eggs.to_s
