# Задача повышенной сложности.
# Напишите программу, которая подсказывает, выходной сегодня или нет (для простоты мы не учитываем
# государственных праздников, итак много дней для безделья):
# Сегодня выходной!
# Или
# Сегодня будний день, за работу!

file_path = File.dirname(__FILE__)

file = File.open(file_path + "/data/holidays.txt", "r")
lines = file.readlines
file.close

holidays_chomp = []

for days in lines do
  days.chomp!
end
# lines.each { |el| holidays_chomp << el.chomp!}

now = Time.now
now_holiday = now.strftime("%m.%d")
# puts now_holiday
# puts now.wday

# for index in holidays_chomp do
#   if index.to_s == now_holiday.to_s
#     marker = true
#   else
#     marker = false
#   end
#   puts index
#   # puts marker
# end

if lines.include?(now_holiday)
  puts "Сегодня праздник!"
elsif now.wday == 0 || now.wday == 6
  puts "Сегодня выходной!"
else
  puts "Сегодня будний день, за работу!"
end


