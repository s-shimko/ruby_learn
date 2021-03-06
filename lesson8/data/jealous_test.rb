# encoding: utf-8
# Тест взят http://www.syntone.ru/library/psytests/content/4786.html

version = "Тест \"Ревнивы ли вы\". Версия 0.4. (c) 2014 Mike Butlitsky\n\n"

# первый аргумент командной строки - имя пользователя, проходящего тест или "-v"
name = ARGV[0]

if (Gem.win_platform? and ARGV[0])
    name = name.encode(ARGV[0].encoding, "cp1251").encode("UTF-8") #.encode("UTF-8")
end


# пользователь может забыть передать аргумент, но как-то мы должны к нему обратиться
if name == nil  
  name = "Таинственная Персона" # пусть будет с таким прозвищем :)  
elsif name == "-v" # если пользователь только хочет проверить что программа работает
  puts version     # выводим информацию о программе
  exit             # и выходим из программы
end

# приветствуем пользователя (надо же нам его расположить к себе, чтобы он честно отвечал на вопросы :)
puts "Добрый день, #{name}! Ответьте пожалуйста честно на несколько вопросов, чтобы узнать кое-что о себе."

# Конструкция вида #{...} внутри строки это другой способ вставить значение переменной в строку.
#
#   "Bla-bla-bla #{name} бла-бла" 
#
# равнозначно записи:   
#n
#   "Bla-bla-bla " + name + " бла-бла" 

# объявляем массив вопросов
questions = [
    "Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?",
    "Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?",
    "Вы расспрашиваете его о работе, о коллегах?",
    "Вы считаете, что каждую свободную минуту должны проводить вместе?",
    "Он для вас — свет в окошке?",
    "Случается ли вам проверять его корреспонденцию и рыться в его вещах?",
    "Чем чаще он говорит о своих чувствах, тем меньше вы верите?",
    "Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?",
    "Вы всегда спрашиваете у него, куда он ходит и с кем встречается?",
    "Если вы на него обижены, то молчите по нескольку дней?",
    "Вас мучают мысли о его бывшей возлюбленной?",
    "Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?"
]

# массив результатов
results = [
    # 10 и более ответов «да»
    "Вы болезненно ревнивы. Не думайте, что если избранник вас любит, " +
        "то он автоматически становится вашей собственностью. Вы считаете себя непривлекательной "+
        "и боитесь, что он бросит вас ради какой нибудь красавицы. Вы ни в чем не уверены, особенно "+
        "в нем. Задумайтесь над этим, потому что нельзя быть настолько ревнивой и агрессивной, это " +
        "может привести к конфликтам и даже к разрыву отношений.",

    # 5–9 ответов «да»
    "Ваша ревность действует на вас мобилизующе, но не она одна управляет вашим поведением. " +
        "В минуту слабости случается и вам устраивать скандалы.Но, успокоившись, вы понимаете, " +
        "что для вашей ревности не было никаких оснований.",

    # Менее 5 ответов «да»
    "Вам совершенно незнакомо чувство ревности. Но тревога и беспокойство могут накапливаться " +
        "со временем.Вы должны решать волнующие вас проблемы со своим партнером."
]

# объявили переменную, хранящую кол-во ответов "да" на вопросы теста и задали начальное значение - ноль
yes_answers = 0

# цикл по массиву questions - каждый элемент записывается в специальную переменную item,
# которой мы и пользуемся в цикле
for item in questions do
  puts item # вывели на экран след. вопрос

  # переменная, куда будет сохраняться ответ пользователя, прочитанный из консоли
  user_input = nil

  #  цикл повторяющий просьбу ввести ответ до тех пор, пока не будет введен правильный ответ
  until (user_input == "yes" or user_input == "no")
    puts "введите 'yes' или 'no' и нажмите Enter"

    # результат, считанный с консоли методом 'gets', избавляем от перевода строки в конце методом
    # 'chomp' и сразу приводим в нижний регистр методом 'downcase'
    #
    # Цепочка методов  gets -> chomp -> downcase выполняется слева направо и результат последнего
    # метода возвращается в переменную uset_input
    #
    # Это эквивалентно:
    #   input = gets
    #   input_no_endline = input.chomp
    #   user_input = input_no_endline.downcase
    #
    user_input = STDIN.gets.chomp.downcase
  end

  if (user_input == "yes")
    yes_answers += 1 # увеличиваем значение переменной на единицу
  end
end # конец цикла по вопросам массива

# выводим ответы на тест в зависимости от результатов ответов
puts "\n#{name}"

puts "\nВаш результат теста (ответов 'да' - #{yes_answers}):"

if (yes_answers >= 10)
  puts results[0]
elsif (yes_answers >=5)
  puts results[1]
else
  puts results[2]
end


# Альтернативные способы пройтись по всем элементам массива:
#
# 1) Универсальный способ
#  i = 0
#  length = questions.length
#
#  while i < length do ...
#  //  внутри цикла выбираем элемент массива questions[i]
#  //  после чего увеличиваем значение i на единицу - т. е.
#  //  в следующем шаге цикла будет выбран следующий элемент массива
#  end
#
# 2) Способ, характерный только для ruby, используя встроенный метод 'each'
#  questions.each do |item|
#  // в переменную item записывается следующий элемент массива
#  end
#
# И еще вагон способов, смотрим подробнее тут:
# http://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby
# http://www.tutorialspoint.com/ruby/ruby_loops.htm
