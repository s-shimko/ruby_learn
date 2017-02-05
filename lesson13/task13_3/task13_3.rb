current_path = File.dirname(__FILE__)

answers_path = current_path + "/data/answers.txt"
questions_path = current_path + "/data/questions.txt"

answers_file = File.open(answers_path, 'r')
questions_file = File.open(questions_path, 'r')

a_lines = answers_file.readlines
q_lines = questions_file.readlines

answers_file.close
questions_file.close

puts "Answer the question!"

i = 0
correct = 0
while i < q_lines.size
  puts q_lines[i].chomp
  answer = gets.chomp
   if  answer == a_lines[i].chomp
     puts "Correct!"
     correct += 1
   else
     puts "Wrong answer!"
   end
  i += 1
end

puts "Quiz finished! Wright answers: " + correct.to_s




