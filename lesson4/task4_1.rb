# В программе объявить две численные переменные, разные по значению. Вывести их на экран.
# Затем с помощью оператора if выбрать наибольшее из них и вывести его на экран.
# Если числа равны — программа должна сообщить об этом.

num1 = 11
num2 = 11

puts "First num: #{num1}"
puts "Second num: #{num2}"

if num1 > num2
  puts "A greater number is: #{num1}"
elsif num2 > num1
  puts "A greater number is: #{num2}"
else
  puts "Numbers are equal!"
end

