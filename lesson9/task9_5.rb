# Вспомните задание 5–го урока, программу, где нужно за 3 попытки угадать число, загаданное компьютером.
# Теперь когда вы знакомы с методами — перепишите программу так, чтобы не повторять три раза одну и ту же
# конструкцию if, вместо нее нужно три раза вызвать один метод.
# Убедитесь, что программа работает точно так же, как и старая.


num = rand(17)

def guess_number(num,guess)

  if guess == num + 2 || guess == num + 1
    answer = "Тепло (нужно меньше)"
  elsif guess == num - 2 || guess == num - 1
    answer = "Тепло (нужно больше)"
  end

  if guess >= num + 3
    answer = "Холодно (нужно меньше)"
  elsif guess <= num - 3
    answer = "Холодно (нужно больше)"
  end

  if guess == num
    # answer = "Ура, вы выиграли!"
    abort("Ура, вы выиграли!")
  end

  puts answer
return guess.to_i
end


puts "Загадано число от 0 до 16, отгадайте какое?"
guess = gets.chomp.to_i
guess_number(num,guess)

puts "Загадано число от 0 до 16, отгадайте какое?"
guess = gets.chomp.to_i
guess_number(num,guess)

puts "Загадано число от 0 до 16, отгадайте какое?"
guess = gets.chomp.to_i
guess_number(num,guess)

if guess != num
  puts "Число: " + num.to_s + " - игра закончена!"
end