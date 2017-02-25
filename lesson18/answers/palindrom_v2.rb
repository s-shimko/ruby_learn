# encoding: utf-8
# (с) 2015 goodprogrammer.ru
#
# Программа, проверяющая палиндром введенное слово или нет
# Версия 2, с удалением пробелов

# пользователь вводит исходную строку, у которой отрезаем крайние пробелы (.strip) 
# и приводим к нижнему регистру (.downcase)
# и удаляем вообще все пробелы (.delete(' '))
original_string = STDIN.gets.encode("UTF-8").chomp.strip.downcase.delete(' ')

# получаем перевернутую строку 
revert_string = original_string.reverse

# сравниваем обе строки и выносим вердикт
if revert_string == original_string
	puts 'Да, это палиндром'
else
	puts 'нет, это не палиндром'
end
