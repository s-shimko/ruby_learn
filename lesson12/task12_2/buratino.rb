class Buratino

  def initialize
    @nose_length = 2
  end

  def increase_nose(value)
    @nose_length += value
  end

  def decrease_nose(value)
    @nose_length -= value
  end

  def nose_length
    @nose_length
  end

end