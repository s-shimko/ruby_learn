# encoding: utf-8
#
# ВНИМАНИЕ: помните, что программу нужно запускать, находясь в той же папке,
# что и сама программа.
# Для этого в консоли нужно сперва перейти в эту папку командой:
# 	cd  путь_к_папке_где_лежит_программа
#

require './buratino.rb'

# создаем двух буратин :)
buratino1 = Buratino.new
buratino2 = Buratino.new

# три раз увеличиваем нос первого
buratino1.increase_nose
buratino1.increase_nose
buratino1.increase_nose

# дважды уменьшаем нос второго
buratino2.decrease_nose
buratino2.decrease_nose

# смотрим какие у них теперь носы
puts "У первого буратино нос #{buratino1.nose_length} см."
puts "У второго буратино нос #{buratino2.nose_length} см."
