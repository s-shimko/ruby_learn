def get_letters

  slovo = ARGV[0]

  if (slovo == nil || slovo == "")
    abort "You don't enter a word for game"
  end

  return slovo.split("")
end

def get_user_input
  letter = ""

  while letter == "" do
    letter = STDIN.gets.encode("UTF-8").chomp

  end


  return letter
end

def check_result(user_input, letters, good_letters, bad_letters)
  if (good_letters.include?(user_input) ||
      bad_letters.include?(user_input))
    return 0
  end
  #
  # if (user_input == 'е' || user_input == 'ё')
  #   if letters.include? user_input
  #     good_letters << 'е' << 'ё'
  #     puts "good letters: #{good_letters.to_s}"
  #   else
  #     bad_letters << 'е' << 'ё'
  #     puts "bad letters: #{bad_letters.to_s}"
  #   end
  # end


  if letters.include? user_input ||
      (user_input == "е" && letters.include?("ё")) ||
      (user_input == "ё" && letters.include?("е")) ||
      (user_input == "и" && letters.include?("й")) ||
      (user_input == "й" && letters.include?("и"))


    # if (user_input == 'е' || user_input == 'ё')
    #   good_letters << 'е' << 'ё'
    #   puts "good letters: #{good_letters.to_s}"
    # elsif (user_input == 'й' || user_input == 'и')
    #   good_letters << 'и' << 'й'
    #   puts "good letters: #{good_letters.to_s}"
    # else
    #   good_letters << user_input
    # end

    good_letters << user_input

    if user_input == "е"
      good_letters << "ё"
    end

    if user_input == "ё"
      good_letters << "е"
    end

    if user_input == "й"
      good_letters << "и"
    end

    if user_input == "и"
      good_letters << "й"
    end

    puts "good letters: #{good_letters.to_s}"
    puts "letters: #{letters.to_s}"

    # condition when all letters are guessed
    if (letters - good_letters).empty?
      return 1
    else
      return 0
    end
  else
    # if (user_input == 'е' || user_input == 'ё')
    #   bad_letters << 'е' << 'ё'
    #   puts "bad letters: #{bad_letters.to_s}"
    #   return -1
    # elsif (user_input == 'й' || user_input == 'и')
    #   good_letters << 'и' << 'й'
    #   puts "bad letters: #{bad_letters.to_s}"
    #   return -1
    # else
    #   bad_letters << user_input
    #   return -1
    # end


    bad_letters << user_input
    return -1
  end
end

def get_word_for_print(letters, good_letters)
  result = ""

  for letter in letters do
    if good_letters.include? letter
      result += letter + " "
    else
      result += "__ "
    end
  end

  return result
end


# 1. print guess word
# 2. info about mistakes and called letters
# 3. mistakes > 7 - tell about lose
# 4. if word is guessed - tell about win
def print_status(letters, good_letters, bad_letters, errors)
  puts "\n Word: " + get_word_for_print(letters, good_letters)

  puts "Errors (#{errors}): #{bad_letters.join(", ")}"

  if errors >= 7
    puts "You loose!"
  else
    if letters.uniq.size == good_letters.size
      puts "You win!\n\n"
    else
      puts "You have attempts: " + (7 - errors).to_s
    end
  end
end

def cls
  system "clear" or system "cls"
end