class Bridge

  def initialize
    puts "Bridge created"
    @opened = true # поля класса
  end

  def open
    puts "Bridge open, you can go!"
    @opened = true
  end

  def is_opened?
    return @opened
  end

end