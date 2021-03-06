# encoding: utf-8

# первый аргумент командной строки в специальном массиве ARGV
argument = ARGV[0]

# ВНИМАНИЕ! Этот способ преобразования кодировок для Windows - немного отличается от того, что
# мы показали на видео! 
# Способ, показанный на видео тоже работает, но в некоторых версиях Windows может работать 
# неверно - используйте код, приведенный в этом файле. 
# Этот способ работает почти во всех разновидностях Windows 7+
#
if (Gem.win_platform? && ARGV[0])
    argument = argument.dup.force_encoding("IBM866").encode("IBM866", "cp1251").encode("UTF-8")
end
puts argument

# пользователь может забыть передать аргумент, но как-то мы должны к нему обратиться
if argument == "дурак"
  puts "Сам дурак!"
else
  puts "Здравствуй, дорогой! #{argument}"
end