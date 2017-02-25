require "net/http"

current_path = File.dirname(__FILE__)

file_path = current_path + "/text.txt"

# url = "https://en.wikipedia.org/wiki/The_Witcher"
# wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding("UTF-8")

file = File.open(file_path, 'r')
text = file.read
file.close

# puts text

words =  text.split(' ')
puts "==================================="
puts words.count

# puts wiktionary_page