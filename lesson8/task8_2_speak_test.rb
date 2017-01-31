name = ARGV[0]

questions = [
    "1. Вам предстоит ординарная или деловая встреча. Выбивает ли Вас ее ожидание из колеи?",
    "2. Вызывает ли смятение или неудовольствие поручение выступать с докладом, сообщением, " +
        "информацией на каком либо совещании, собрании?",
    "3. Любишь говорить?"
]

results = [
    "Вы говорун!",
    "Вы полупокер!",
    "Вы молчун!",
]

answer = nil
until (answer == 'yes' or answer == 'no')
  puts "Привет, #{name}! Хочешь пройти тест на уровень общительности?"
  puts "'yes' or 'no'?"
  answer = STDIN.gets.chomp.downcase
end

if answer == 'no'
  abort("Ну и зря!")
end

puts "Go!"

answer_count = 0


for i in questions do
  puts i
  answer = nil
  until (answer == 'yes' or answer == 'no' or answer == 'sometimes')
    answer = STDIN.gets.chomp.downcase
  end

  if answer == 'no'
    answer_count += 2
  elsif answer == 'sometimes'
    answer_count += 1
  else
    answer_count += 0
  end
end

puts "Вы набрали #{answer_count} oчков."
puts "Ваш результат:"
if answer_count <= 6 && answer_count >= 4
  puts results[0]
elsif answer_count <= 3 && answer_count >= 1
  puts results[1]
else
  puts results[2]
end
