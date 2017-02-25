require 'unicode_utils/upcase'

puts "weiß"
puts UnicodeUtils.upcase("weiß")

2.times {
letter = gets.chomp
puts UnicodeUtils.upcase("#{letter}", :tr)
}
