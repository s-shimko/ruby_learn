var1 = 10
var2 = 0

puts "First number: "
puts var1

puts "Second number: "
puts var2


puts "Choose operation (+ - * /):"

operation = gets.chomp

case operation
  when "+"
  then
    result = var1.to_f + var2.to_f

  when "-"
  then
    result = var1.to_f - var2.to_f

  when "*"
  then
    result = var1.to_f * var2.to_f

  when "/"
  then

    begin
      result = var1.to_f / var2.to_f

    rescue ZeroDivisionError => e
      puts "Wrong! Zero division! " + e.message
    end

  else
    puts "Wrong operation!"
end

puts "Result: "
puts result





