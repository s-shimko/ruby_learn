require_relative './movie.rb'
require_relative './man.rb'

puts "Which director? Enter a name:"
director = gets.chomp.to_s

movies = []
while movies.size < 3
  puts "Any his movie? Enter a movie:"
  movie_name = gets.chomp.to_s
  movies << Movie.new(movie_name,director)
end

man1 = Man.new("Charlie", "Chaplin")
man1.write_movie(movies.sample)
man2 = Man.new("Chuck", "Berry")
man2.write_movie(movies.sample)
man3 = Man.new("Iggy", "Pop")
man3.write_movie(movies.sample)

men = []
men.push(man1,man2,man3)

i = 0
while i < men.size
  puts men[i].name
  puts "With favorite movie: #{men[i].return_movie.movie}"
  i += 1
end