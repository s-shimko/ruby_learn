var1 = 10
var2 = 0

puts "First number: "
puts var1

puts "Second number: "
puts var2


puts "Choose operation (+ - * /):"

begin
operation = gets.chomp

case operation
  when "+"
  then
    result = var1 + var2

  when "-"
  then
    result = var1 - var2

  when "*"
  then
    result = var1 * var2

  when "/"
  then
    result = var1 / var2

  else
    puts "Wrong operation!"
end

rescue ZeroDivisionError => e
  puts "Wrong! Zero division! " + e.message
end

puts "Result: "
puts result





