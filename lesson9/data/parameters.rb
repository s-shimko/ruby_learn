# encoding: utf-8

puts "я строка 1"  # метод puts с параметром строкой
puts   # без параметра, выводит пустую строку
puts("я строка 2") # другой способ передать параметры - в круглых скобках
puts

array = ["James Bond", "Bradd Pit", "Dr. Who", "House MD", "Madonna", "Mr. Putin"]

# у массива вызвали метод to_s без аргументов и то,
# что получилось передали как аргумент в метод puts
puts(array.to_s)

array.pop # без аргументов метод pop удаляет один последний элемент
puts(array.to_s)

# если аргумент есть - удаляется столько последних элементов массива,
# чем равен аргумент
array.pop(2)
puts(array.to_s)

# документация на метод pop http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-pop