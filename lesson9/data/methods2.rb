# encoding: utf-8
# программа 10 негритят – посвящается самому популярному роману Агаты Кристи
# https://ru.wikipedia.org/wiki/Десять_негритят
# https://ru.wikipedia.org/wiki/Десять_негритят_(фильм)


# Объявляем метод.
# Метод будет возвращать правильно склонение слова, когда нужно его использовать с числом
# Например во фразах, типа "1 крокодил, 23 крокодила, 7 крокодилов"
def sklonenie(number, krokodil, krokodila, krokodilov)
  # проверим входные данные на правильность
  if (number == nil || !number.is_a?(Numeric))
    number = 0 # если первый параметр пустой или не число, то продолжаем как будто он нулевой
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
end

# берем из командной строки кол-во негритят
skolko = ARGV[0].to_i

# выводим первую строчку детской считалки из романа Агаты Кристи
puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} " +
         "#{sklonenie(skolko, "пошел", "пошли", "пошли")} купаться в море!"


# раскомментируйте эту строчку и убедитесь, что она не работает, т. к. переменная
# ostatok объявлена внутри метода sklonenie и не доступна извне
# puts ostatok