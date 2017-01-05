# Возьмите вашу игру, которую вы сделали в домашнем задании к уроку про «южное бутово»
# (если не делали — самое время сделать).
# В этой игре теперь защитите программу от неправильного ввода вариантов.
# То есть если программа просит выбрать 1. ... 2. ... или 3. ... ,
# а пользователь вводит 7 или вообще посторонние символы, то программа повторяет
# свой вопрос и не продолжается пока не будет введен один из доступных вариантов.
puts "Youre met a girl, she asks you: 'Who are you?'
And you answer:
1. I'm lord of destruction
2. I'm Rocco Zifredy
"
choice = nil
until choice == 1 || choice == 2
choice = gets.chomp.to_i
  if choice == 1
    puts "She kicks your balls. You died."
  elsif choice == 2
    puts "She touch your balls. And says: 'Mmm, I love Rocco...'"
  else
    puts "Wrong input!"
    puts "Try again:"
  end
end
puts "THE END"
