# Класс нашего качка
class BodyBuilder

  #  конструктор, где создаем три группы мышц
  def initialize
    @triceps = 0
    @biceps = 0
    @deltovidka = 0
  end

  #  увеличиваем мышцы в зависимости от параметра – типа мышцы
  def pump_muscle(muscle)

    case muscle
        when "triceps" then @triceps += 1
        when "biceps" then @biceps += 1
        when "deltovidka" then @deltovidka += 1
    end

  end

  #  Выводим текущий статус мышц
  def show_muscles
    puts "Бицепсы: #{@biceps}"
    puts "Трицепсы: #{@triceps}"
    puts "Дельтовидка: #{@deltovidka}"
  end

end
