require "pony"
require "io/console"
require "cyrillizer"

Cyrillizer.language = :russian

my_mail = "sergey1shimko@gmail.com"

puts "Enter your email #{my_mail} password to send mail:"
password = STDIN.noecho(&:gets).chomp

puts "Enter subject?"
subject = STDIN.gets.chomp.to_lat

puts "Whom send mail?"
send_to = STDIN.gets.chomp

puts "Enter mail text:"
body = STDIN.gets.chomp

Pony.mail(
    {
        :subject => subject,
        :body => body,
        :to => send_to,
        :from => my_mail,

        :via => :smtp,
        :via_options => {
            :address => 'smtp.gmail.com',
            :port => '587',
            :enable_starttls_auto => true,
            :user_name => my_mail, # используем наш адрес почты как логин
            :password => password, # задаем введенный в консоли пароль
            :authentication => :plain,
        }
    }
)

puts "Mail was sucessfully send!"
