# encoding: utf-8
# 
# Мини-викторина
# 

# путь к папке с программой
current_path = File.dirname(__FILE__)

# файл вопросов
questions = current_path + "/questions.txt"

# файл ответов
answers = current_path + "/answers.txt"


if File.exist?(answers) && File.exist?(questions) # если оба файла существуют
  puts "Мини-викторина. Ответьте на вопросы."

  # открываем файлы
  quest = File.new(questions, "r:UTF-8")
  answ = File.new(answers, "r:UTF-8")

  # записываем массив всех строчек и закрываем файлы
  questions_lines = quest.readlines
  answers_lines = answ.readlines
  quest.close
  answ.close

  # переменная, считающая кол-во правильных ответов
  correct_answers = 0
  # переменная, определяющая позицию текущего элемента в массиве вопросов и ответов
  position = 0

  # цикл, в котором позиция меняется от 0 до последнего вопроса
  while position < questions_lines.size
    # задаем вопрос
    puts questions_lines[position]

    # спрашиваем у пользователя ответ
    user_answer = STDIN.gets.encode("UTF-8").chomp

    if user_answer == answers_lines[position].chomp   # если ответ совпадает с ответом в файле ответов
      puts "Верный ответ!"
      correct_answers += 1  # увеличиваем на 1 счетчик правильных ответов
    else
      puts "Неправильно. Правильный ответ: " + answers_lines[position]  # иначе - говорим правильный ответ
    end

    position += 1 # переходим к следующему вопросу в массивах
  end

  # выводим результаты
  puts 
  puts "У вас #{correct_answers} правильных ответов из #{questions_lines.size}" 
else
  puts "Файл не найден!"
end
