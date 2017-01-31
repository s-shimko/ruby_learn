# encoding: utf-8
#
# Программа, которая выводит последние 5 строк из файла

# Помните что файл, который вы передаете как параметр,
# должен находиться на диске в той же папке, из которой вы запускаете программу!
file_name = ARGV[0]

# Проверяем, существует ли файл, и что имя файла передали в ARGV[0]
if file_name != nil && File.exist?(file_name)
  puts "Последние 5 строк файла: " + file_name

  # Открываем файл для чтения
  f = File.new(file_name, "r:UTF-8")

  # Записываем массив всех строчек файла
  lines = f.readlines

  # Закрываем файл
  f.close

  # Получаем положение первой строчки для вывода (пятой с конца)
  line_number = lines.length - 5

  # Выводим 5 последних элементов из массива
  while line_number < lines.length do
    puts lines[line_number]
    line_number +=1
  end
else
  puts "Файл не найден!"
end
