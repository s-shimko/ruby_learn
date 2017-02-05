# encoding: utf-8

# подключаем библиотеку для отправки писем ppny
require 'pony'
# подключаем библиотеку для работы с консолью
#require 'io/console'

my_mail = "ваша_поча@например_на_mail.ru" # ЗАМЕНИТЕ на свою почту и выберите подходящие настройки ниже

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"

# вместо обычного gets используем спец. метод из библиотеки 'io/console',
# который скрывает вводимый пароль
# password = STDIN.noecho(&:gets).chomp
password = STDIN.gets.chomp

puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp.encode("UTF-8") # явно преобразуем в правильную кодировку, чтобы не было сюрпризов

# Отправляем письмо, используя класс Pony из библиотеки pony
Pony.mail({
              :subject => "Привет из программы на руби!", # задаем тему письма
              :body => body,  # задаем содержимое письма, его тело
              :to => send_to, # кому отправить письмо
              :from => my_mail, # наш обратный адрес, от кого письмо


              # Ниже идут опции класса Pony для почтового ящика на Mail.ru
              # подробнее об опциях Pony см. документацию https://github.com/benprew/pony

              :via => :smtp,
              :via_options => {
                  :address => 'smtp.mail.ru', # это хост, сервер отправки почты
                  :port => '465', # порт
                  :tls => true,   # если сервер работает в режиме TLS
                  :user_name => my_mail, # используем наш адрес почты как логин
                  :password => password, # задаем введенный в консоли пароль
                  :authentication => :plain  # "обычный" тип авторизации по паролю
              }

              # Это опции класса Pony для почтового ящика Gmail.com
              #
              # :via => :smtp,
              # :via_options => {
              #       :address => 'smtp.gmail.com',
              #     :port => '587',
              #     :enable_starttls_auto => true,
              #     :user_name => my_mail, # используем наш адрес почты как логин
              #     :password => password, # задаем введенный в консоли пароль
              #     :authentication => :plain,
              # }
              #


              # Это опции класса Pony для почтового ящика на Яндексе
              #
              # :via => :smtp,
              # :via_options => {
              #     :address => 'smtp.yandex.ru',
              #     :port => '465',
              #     :enable_starttls_auto => true,
              #     :tls => true,
              #     :user_name => my_mail, # используем наш адрес почты как логин
              #     :password => password, # задаем введенный в консоли пароль
              #     :authentication => :plain,
              # }
              #
              #
              # о том какие опции нужно задавать для вашего почтового ящика,
              # если это не мэйл и не gmail - см. документацию вашего почтового провайдера
              # или не поленитесь и заведите тестовый ящик на мэйл.ру или gmail, ради такого дела :)
          })

puts "Письмо отправлено!"