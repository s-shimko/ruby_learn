# encoding: utf-8

# На основе теста http://www.syntone.ru/library/psytests/content/4969.html

version = "Ваш уровень общительности. Тест поможет определить ваш уровень коммуникабельности. Версия 0.1. (c) Bibeta.ru\n\n"

# признак хорошего тона - вывести информацию о программе
puts version

# массив вопросов
questions = [
    "Переживаете ли вы в ожидании важной деловой встречи?",
    "Если вам поручат выступить с докладом на каком либо мероприятии, вызовет ли это у вас чувство дискомфорта? ",
    "Вы откладываете поход к врачу до последнего момента? ",
    "Если вам предстоит командировка в незнакомый город, постараетесь ли вы избежать этой командировки? ",
    "Вы делитесь своими мыслями и чувствами с кем бы то ни было? ",
    "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом? ",
    "Вы думаете, что людям разных поколений действительно трудно понимать друг друга? ",
    "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, взятые у вас несколько месяцев назад? ",
    "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
    "Вы заговорите с незнакомым человеком, оставшись с ним наедине? ",
    "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее? ",
    "Вам неприятно быть судьей в чужих конфликтах? ",
    "Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь к чужому мнению? ",
    "Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос, вы предпочтете промолчать и не исправлять его? ",
    "Просьбы помочь в учебе или работе раздражают вас?",
    "Вам проще изложить свое мнение на бумаге, чем рассказать о нем? "
]

# массив результатов
results = [
    # >= 30 баллов
    "Что скрывать, вы некоммуникабельны, и страдаете от этого прежде всего сами. Но и окружающим
очень  трудно с вами, ведь там, где необходимы совместные усилия, вы совершенно теряетесь.
Почему вы  так неохотно общаетесь? Неужели в вашем окружении совсем нет интересных людей?
Попробуйте потренировать свою общительность — обращайтесь к людям с различными вопросами,
пусть даже для начала  они будут касаться только работы.",

    # 25–29 баллов
    "Вы неразговорчивы, предпочитаете одиночество шумным компаниям. Друзей у вас совсем немного.
Новая работа и новые люди вызывают у вас чувство дискомфорта. Эта особенность характера
не ускользнула от вашего внимания, и вы часто сердитесь на себя за нее. Вспомните, как
легко вы общаетесь, когда чем то очень увлечены. Ведь можете же, когда хотите.",

    # 19-24 балла
    "В целом вы общительный человек. Новая обстановка и новые проблемы вас не пугают.
И все таки с людьми вы сходитесь осторожно, постепенно, публично высказываетесь
неохотно. Иногда ваши высказывания саркастичны, даже безо всякого на то основания.",

    # 14-18 балла
    "С коммуникабельностью у вас все в порядке. Вы любознательны, терпеливы, внимательно слушаете
интересного собеседника, спокойно отстаиваете свою точку зрения. Встреча с новыми людьми
не вызывает у вас неприятных ощущений. Но многолюдные места, шумные компании и болтливые
люди вызывают у вас раздражение.",

    # 9-13 балла
    "Вы весьма общительны, не так ли? Ваши любопытство, разговорчивость, вспыльчивость вызывают
у некоторых людей раздражение и заставляют думать о вас как о легкомысленном человеке.
Вы легко знакомитесь с новыми людьми, вам нравятся большие компании, особенно если вы
находитесь в центре всеобщего внимания. Вам не помешает выработать в себе немного терпения
и усидчивости, необходимых для решения серьезных проблем.",

    # 4-8 балла
    "Вы, кажется, знакомы со всеми и все всегда обо всех знаете. Вы любите принимать участие в
различных обсуждениях, хотя серьезные темы кажутся вам ужасно скучными. Привыкли
высказываться даже в том случае, если недостаточно компетентны в обсуждаемом вопросе.
Беретесь за любое дело, хотя не всегда можете успешно довести его до конца. Неудивительно,
что руководители и коллеги относятся к вам с недоверием и никто не хочет выполнять с вами
совместные задания.",

    # <3 балла
    "Ваша общительность чрезмерна. Вы говорливы, многословны, вспыльчивы, обидчивы, часто
необъективны. Вы вмешиваетесь в дела, которые не имеют к вам никакого отношения.
Беретесь судить о проблемах, в которых совершенно не разбираетесь. Часто из за
вас возникают конфликты. С серьезной работой вы справиться не в состоянии. Людям
очень трудно с вами. Вам необходимо воспитывать в себе терпение, сдержанность
и уважительное отношение к людям."
]

# объявили переменную, где будем хранить суммарное кол-во баллов за ответы
points = 0

# цикл по массиву questions - каждый элемент записывается в переменную item,
# которой мы и пользуемся внутри цикла
for item in questions do
  puts # выведем перед каждым вопросом пустую строку для красоты
  puts item # вывели на экран след. вопрос

  # переменная, куда сохраняется ответ пользователя, прочитанный из консоли
  user_input = nil

  #  цикл повторяющий просьбу ввести ответ до тех пор, пока не будет введен правильный ответ
  until (user_input == 1 or user_input == 2 or user_input == 3)
    puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"

    # результат, считанный с консоли методом 'gets', избавляем от перевода строки в конце методом
    # 'chomp' и сразу превращаем в целое число методом 'to_i'
    #
    # Цепочка методов  gets -> chomp -> to_i выполняется слева направо и результат последнего
    # метода возвращается в переменную user_input
    #
    user_input = gets.chomp.to_i  # to_i встроенный в ruby метод объекта типа String, он преобразует строку в соотв. число
  end

  if (user_input == 1)
    points += 2 # увеличиваем значение переменной на 2 за ответ "да"
  elsif (user_input == 3)
    points += 1 # увеличиваем значение переменной на единицу за ответ "иногда"
  end
  # за ответ "нет" - ноль баллов поэтому ничего не увеличиваем

end # конец цикла по вопросам массива


# выводим ответы на тест в зависимости от результатов ответов
puts "\n\nРезультат теста (всего баллов - #{points}):"

# логика вывода результатов в зависимости от баллов
if (points >= 30)
  puts results[0]
elsif (points >= 25)
  puts results[1]
elsif (points >= 19)
  puts results[2]
elsif (points >= 14)
  puts results[3]
elsif (points >= 9)
  puts results[4]
elsif (points >= 4)
  puts results[5]
else
  puts results[6]
end

# Подробнее о конструкции if - elseif - else и ее вариациях читайте тут:
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Control_Structures
# http://www.tutorialspoint.com/ruby/ruby_if_else.htm
