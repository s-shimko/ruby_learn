class Man
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @age = rand(1..100)
    @movie = nil
  end

  def age
    return @age
  end

  def name
    return "#{@first_name} #{@last_name}"
  end

  def write_movie(movie)
     @movie = movie
  end

  def return_movie
    return @movie
  end
end