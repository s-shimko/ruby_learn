# encoding: utf-8
# 
# ВНИМАНИЕ: помните, что программу нужно запускать, находясь в той же папке,
# что и сама программа. 
# 
# Для этого в консоли нужно сперва перейти в эту папку командой:
# 	cd  путь_к_папке_где_лежит_программа
# 
# Тест взят http://www.syntone.ru/library/psytests/content/4969.html
# 
require "./test.rb"
require "./result_printer.rb"

version = "Ваш уровень общительности. Тест поможет определить ваш уровень коммуникабельности. Версия 0.1. (c) Bibeta.ru\n\n"

# признак хорошего тона - вывести информацию о программе
puts version

#  создаем объекты
test = Test.new
result_printer = ResultPrinter.new

# основной цикл программы
while test.next_question == true do
  # Цикл пустой! Интересная фишка.
  # 
  # Все дело в том, что все активные действия происходят в методе test.next_question
  # а он вызывается на каждой итерации цикла и сразу же делается проверка – какое 
  # метод возвращает значение.
  # Поэтому само "тело" цикла может быть пустым – нам больше ничего не нужно делать.
end


# И наконец выводим результат
result_printer.print_result(test)
