# Класс, описывающий поведение Буратин

class Buratino

  def initialize
    # Длина носа девственного Буратино - 2 см.
    @nose_length = 2
  end

  def increase_nose
    @nose_length += 1
  end

  def decrease_nose
    @nose_length -= 1
  end

  def nose_length
    @nose_length
  end
end
