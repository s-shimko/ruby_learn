class Chameleon

  def initialize
    @color = nil
  end

  def change_color(color)
    @color = color
    puts "Now I'm #{color}"
  end
end