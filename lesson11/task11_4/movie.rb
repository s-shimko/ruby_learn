class Movie
  def initialize(movie_name, director)
    @movie_name = movie_name
    @director = director
  end

  def movie
    return @movie_name
  end

  def director
    return @director
  end
end