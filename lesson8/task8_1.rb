# Программа «Соловьи»
# В городском парке живут соловьи. Однако их редко слышно, потому что они поют только когда температура
# на улице от 22 до 30 градусов в любое время года, однако летом они поют при температуре от 15 до 35 градусов.
# Напишите программу, которая спрашивает у пользователя текущую температуру и время года и сообщает о том,
# поют в данный момент соловьи или нет.
# Проверьте правильность работы программы на разных значениях введенных данных.
# Какая сейчас температура?
# 15
# Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)
# 1
# Скорее идите в парк, соловьи поют!
# Какая сейчас температура?
# 34
# Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)
# 0
# Сейчас соловьи молчат, греются или прохлаждаются :)

puts "Какая сейчас температура?"
t = gets.chomp.to_i

puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
season = gets.chomp.to_i

if (t > 21 && t < 31) && (season >= 0 && season < 4)
  puts "Любое время года! Скорее идите в парк, соловьи поют!"
elsif (t > 14 && t < 36) && season == 1
  puts "Лето! Скорее идите в парк, соловьи поют!"
else
  puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
end


