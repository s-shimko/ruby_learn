# В нашем методе sklonenie есть один баг (ошибка) — он неправильно работает с числами от 11 до 14.
# Например, вместо 11 негритят он вернет 11 негритенок, а вместо 14 негритят — 14 негритенка.
# Исправьте эту ошибку в методе.

def sklonenie(number, krokodil, krokodila, krokodilov)
  # проверим входные данные на правильность
  if (number == nil || !number.is_a?(Numeric))
    number = 0 # если первый параметр пустой или не число, то продолжаем как будто он нулевой
  end
  ## task 9-6
  # if (number >= 11 && number <= 14)
  #   return krokodilov
  # end
  #
  ostatok2 = number % 100

  if (ostatok2 >= 11 && ostatok2 <= 14)
    return krokodilov
  end

  ostatok = number % 10 # склонение определяется последней цифрой в числе

  if (ostatok == 1) # для 1 - именительный падеж (Кто? Что?)
    return krokodil
  end

  if (ostatok >= 2 && ostatok <= 4) # для 2-4 - родительный падеж (Кого? Чего?)
    return krokodila
  end

  # 5-9 или ноль – родительный падеж и множественное число
  if (ostatok >= 5 && ostatok <= 9 || ostatok == 0)
    return krokodilov
  end

  ## my answer to 9_6-7
  # new = number.to_s.split("").map { |s| s.to_i }
  # new2 =  (new[-2].to_s + new[-1].to_s).to_i
  # if new2 >= 11 && new2 <= 14
  #   result = krokodilov
  # end
  #
  # return result

end

# берем из командной строки кол-во негритят
skolko = ARGV[0].to_i

# выводим первую строчку детской считалки из романа Агаты Кристи
puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} " +
         "#{sklonenie(skolko, "пошел", "пошли", "пошли")} купаться в море!"

# number = ARGV[0].to_i
# new = number.to_s.split("").map { |s| s.to_i }
# puts new.to_s
# new2 =  (new[-2].to_s + new[-1].to_s).to_i
# puts new2



