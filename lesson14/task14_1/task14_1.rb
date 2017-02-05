current_path = File.dirname(__FILE__)

file_path = current_path + "/data/movies.txt"

if file_path != nil && File.exist?(file_path)

  f = File.open(file_path, 'r')
  movies = f.readlines
  f.close

  puts "Today we suggest you to watch movie: "
  puts movies.sample
else
  puts "No file!"
end





