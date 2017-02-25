require "net/http"

puts "Enter Email:"
email = gets.chomp

if email =~ /[\w\d]*@[\w\d]+\.[\w\d]+/
  puts "Thank you!"
else
  puts "Wrong email!"
end
