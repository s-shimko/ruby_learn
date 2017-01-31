class Man
  def initialize
    @age = rand(1..100)
  end

  def what_age
    puts "The age is #{@age}!"
  end
end