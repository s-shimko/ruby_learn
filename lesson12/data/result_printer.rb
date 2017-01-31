class ResultPrinter

  def print_status(game)
    cls

    puts "\n Word: " + get_word_for_print(game.letters, game.good_letters)

    puts "Errors (#{game.errors}): #{game.bad_letters.join(", ")}"

    print_viselitsa(game.errors)

    if game.errors >= 7
      puts "You loose!"
    else
      if game.letters.uniq.size == game.good_letters.size
        puts "You win!\n\n"
      else
        puts "You have attempts: " + (7 - game.errors).to_s
      end
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

  def cls
    system "clear" or system "cls"
  end

  def print_viselitsa(errors)
    case errors
      when 0
        puts "
         _________
         |/
         |
         |
         |
         |
         |
         |
         |
        _|_________
        |         |
        "
        # print empty
      when 1
        puts "
         _________
         |/
         |       ( )
         |
         |
         |
         |
         |
         |
        _|_________
        |         |
        "
      when 2
        puts "
         _________
         |/
         |       ( )
         |        |
         |
         |
         |
         |
         |
        _|_________
        |         |
        "
      when 3
        puts "
         _________
         |/
         |       ( )
         |       _|_
         |
         |
         |
         |
         |
        _|_________
        |         |
        "
      when 4
        puts "
         _________
         |/
         |       ( )
         |       _|_
         |        |
         |
         |
         |
         |
        _|_________
        |         |
        "
      when 5
        puts "
         _________
         |/
         |       ( )
         |       _|_
         |        |
         |       /
         |
         |
         |
        _|_________
        |         |
        "
      when 6
        puts "
         _________
         |/
         |       ( )
         |       _|_
         |        |
         |       / |
         |
         |
         |
        _|_________
        |         |
        "
      when 7
        puts "
         _________
         |/       |
         |       (_)
         |       _|_
         |        |
         |       / |
         |
         |
         |
        _|_________
        |         |
        "

    end
  end

end