require 'unicode_utils/upcase'

current_path = "./" + File.dirname(__FILE__)

begin
require_relative current_path + "/game.rb"
require_relative current_path + "/result_printer.rb"
require_relative current_path + "/word_reader.rb"
rescue LoadError => e
  puts "Path is incorrect!"
end


printer = ResultPrinter.new

reader = WordReader.new

slovo = reader.read_from_file(current_path + "/data/words.txt")

game = Game.new(slovo)

while game.status == 0 do
  printer.print_status(game, slovo)
  game.ask_next_letter
end

printer.print_status(game, slovo)
