puts "What enemy you wanna know?"

hero = gets.chomp
case hero
  when "batman", "Batman", "Бэтмен", "бэтмен"
    puts "Jocker"
  when "Holmes"
    puts "Moriarty"
  else
    puts "No hero!"
end
