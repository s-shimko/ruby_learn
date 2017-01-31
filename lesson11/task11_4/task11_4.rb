require_relative './movie.rb'

puts "Which director? Enter a name:"
director = gets.chomp.to_s

movies = []
while movies.size < 3
  puts "Any his movie? Enter a movie:"
  movie_name = gets.chomp.to_s
  movie = Movie.new(movie_name,director)
  movies << movie
end

puts "Today we will watch: #{movies.sample.movie}"
puts "Director: #{movie.director}"