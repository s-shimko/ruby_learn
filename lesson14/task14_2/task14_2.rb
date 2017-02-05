current_path = File.dirname(__FILE__)

file_path = current_path + "/data/choose_movie.txt"

if file_path != nil && File.exist?(file_path)

  f = File.open(file_path, 'r')
  movies = f.readlines
  f.close

  puts "Today we suggest you to watch movie: "
  puts movies[0].chomp


  num = rand(movies.length + 1)
  if num.even?
    num += 1
  end
  puts movies[num]
  puts movies[num + 1]
else
  puts "No file!"
end
