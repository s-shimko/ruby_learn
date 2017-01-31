class Kettle
  def pour_water(litres)
    puts "You've pour in the kettle #{litres} litres of water"
  end

  def push_button
    puts "Button on kettle is pushed"
  end

  def indicator_on
    puts "Boiling indicator is light up"
  end

  def start_boiling
    puts "Water start to boil"
  end

  def check_temperature
    current_temperature = 0
    while current_temperature < 100
      puts "What is the current temperature?"
      current_temperature = gets.chomp.to_i
    end
  end

  def indicator_off
    puts "Boiling indicator is light down"
  end

  def water_ready
    puts "The water have boiled"
  end

end