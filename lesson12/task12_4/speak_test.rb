class SpeakTest

  def initialize
    @answer_count = 0
  end


  def start_question(name)
    answer = nil
    until (answer == 'yes' or answer == 'no')
      puts "Привет, #{name}! Хочешь пройти тест на уровень общительности?"
      puts "'yes' or 'no'?"
      answer = STDIN.gets.chomp.downcase
    end

    if answer == 'no'
      abort("Ну и зря!")
    end
   end

  def count_answer(questions)

    for i in questions do
      puts i
      answer = nil
      until (answer == 'yes' or answer == 'no' or answer == 'sometimes')
        answer = STDIN.gets.chomp.downcase
      end

      if answer == 'no'
        @answer_count += 2
      elsif answer == 'sometimes'
        @answer_count += 1
      else
        @answer_count += 0
      end
    end
  end

  def get_result(results, answer_count)

    puts "Вы набрали #{answer_count} oчков."
    puts "Ваш результат:"
    if answer_count <= 6 && answer_count >= 4
      puts results[0]
    elsif answer_count <= 3 && answer_count >= 1
      puts results[1]
    else
      puts results[2]
    end

  end


  def answer
    @answer
  end

  def answer_count
    @answer_count
  end


end