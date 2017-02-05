# encoding: utf-8
# Тест взят http://www.syntone.ru/library/psytests/content/4969.html

# класс, выводящий результаты теста, читая их из файла
# алгоритм работы класса повторяет алгоритм из этой же программы в материалах
# к уроку 12
class ResultPrinter 

  def initialize
    # массив результатов, загружаем из файла results.txt
    current_path = File.dirname(__FILE__)
    file_name = current_path + "/results.txt"

    if !File.exist?(file_name)
      abort "Невозможно загрузить результаты!"
    end

    f = File.new(file_name, "r:UTF-8") # открываем файл, явно указывая его кодировку
    @results = f.readlines   # читаем все строки в массив
    f.close # закрываем файл
  end


  # метод, выводящий на экран результаты теста
  # в качестве параметра в метод должен передаваться объект класса Test
  def print_result(test)  
    # выводим ответы на тест в зависимости от результатов ответов
    puts "\n\nРезультат теста (всего баллов - #{test.points}):"

    # логика вывода результатов в зависимости от баллов
    if (test.points >= 30)
      puts @results[0]
    elsif (test.points >= 25)
      puts @results[1]
    elsif (test.points >= 19)
      puts @results[2]
    elsif (test.points >= 14)
      puts @results[3]
    elsif (test.points >= 9)
      puts @results[4]
    elsif (test.points >= 4)
      puts @results[5]
    else
      puts @results[6]
    end
  end

end

# Подробнее о конструкции if - elseif - else и ее вариациях читайте тут:
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures
# http://www.tutorialspoint.com/ruby/ruby_if_else.htm
