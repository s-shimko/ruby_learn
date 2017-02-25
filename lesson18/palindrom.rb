require "cyrillizer"
require "unicode_utils"

# original_string = gets.chomp.to_lat.strip.downcase.delete(" ") #for cyrillizer
original_string = UnicodeUtils.downcase(STDIN.gets.encode("UTF-8").chomp.strip.downcase.delete(' '))
puts original_string
revert_string = original_string.reverse

if revert_string == original_string
  puts "Yes! It's polindrom!"
else
  puts "No! It's not polindrom!"
end