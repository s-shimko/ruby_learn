# encoding: utf-8
# Тест взят http://www.syntone.ru/library/psytests/content/4969.html

# Класс, хранящий вопросы и логику прохождения теста
class Test

  # конструктор, в котором создаем поля для вопросов и подсчета результатов
  def initialize
    # массив вопросов, загружаем из файла questions.txt
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/questions.txt"

    if !File.exist?(file_name)
      abort "Невозможно загрузить вопросы!"
    end

    f = File.new(file_name, "r:UTF-8") # открываем файл, явно указывая его кодировку
    @questions = f.readlines   # читаем все строки в массив
    f.close # закрываем файл

    # поле, где будем хранить суммарное кол-во баллов за ответы
    @points = 0

    # указатель на текущий вопрос теста, увеличивается на 1 с каждым заданным вопросом
    @current_question = 0
  end   # конец конструктора


  # метод, которы задает пользователю очередной вопрос и спрашивает ответ
  # если еще остались незаданные вопросы - метод должен вернуть false
  # если задан последний вопрос теста – метод должен вернуть true
  # 
  # Про типы объектов true/false – см. 
  #   https://ru.wikipedia.org/wiki/Логический_тип
  # 
  # В остальном этот метод повторяет алгоритм этого теста из 8 урока.
  def next_question
    # вывели очередной вопрос из массива
    puts @questions[@current_question]

    user_input = nil

    until (user_input == 1 or user_input == 2 or user_input == 3)
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i  
    end
    
    if (user_input == 1)
      @points += 2 # увеличиваем значение поля на 2 за ответ "да"
    elsif (user_input == 3)
      @points += 1 # увеличиваем значение поля на единицу за ответ "иногда"
    end

    # увеличиваем счетчик заданных вопросов
    @current_question += 1

    # проверяем, если больше вопросов нет, возвращаем false, иначе - true
    if @current_question >= @questions.size
      return false
    else
      return true
    end
  end # конец метода 

  # метод возвращает значение поля @points – суммарные баллы набранные в тесте
  def points
    return @points
  end

end  # конец класса