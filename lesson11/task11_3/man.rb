class Man
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @age = rand(1..100)
  end

  def age
    return @age
  end

  def name
    return "#{@first_name} #{@last_name}"
  end
end