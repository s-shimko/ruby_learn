class Bodybuilder

  def initialize(biceps, triceps, delts)
    @biceps = biceps
    @triceps = triceps
    @delts = delts
  end

  def train_muscle(muscle)
    case muscle
      when @biceps
        @biceps += 1
      when @triceps
        @triceps += 1
      when @delts
        @delts += 1
    end
  end

  def biceps
    @biceps
  end

  def triceps
    @triceps
  end

  def delts
    @delts
  end

  def show_bb
    puts "Biceps: " + @biceps.to_s
    puts "Triceps: " + @triceps.to_s
    puts "Delts: " + @delts.to_s
  end

end