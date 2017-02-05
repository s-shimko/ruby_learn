# encoding: utf-8

puts "Сегодня Вам предлагается к просмотру фильм:"

# Определим папку, в которой лежит эта программа "choose_movie.rb"
# C помощью специального служебного объекта Ruby __FILE__ и метода класса File
current_path = File.dirname(__FILE__)

# Наши данные лежат в файле choose_movie.txt
file_path = current_path + "/choose_movie.txt"

# Перед открытием надо проверить - существует ли файл, методом exist? у класса File
if File.exist?(file_path)

  # встроенный в руби класс File, в конструкторе передается имя файла
  # второй параметр явно указывает кодировку файла, чтобы русские символы прочитались правильно
  f = File.new(file_path, "r:UTF-8")

  # метод readlines, возвращает массив строк файла
  lines = f.readlines

  # Как только все данные прочитаны, файл нам больше не нужен, следует его закрыть.
  # Все, что мы уже прочитали (переменная lines) – останется с нами после закрытия
  f.close

  # Выведем случайную строчку из массива. Метод sample определен в руби для объектов типа Array
  puts lines.sample
else
  # Если файла нет — напишем об этом пользователю
  puts "Файл не найден"
end