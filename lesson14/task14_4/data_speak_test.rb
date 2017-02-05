class DataSpeakTest

  def initialize
    current_path = File.dirname(__FILE__)

    file_path_results = current_path + "/data/results.txt"
    file_path_questions = current_path + "/data/questions.txt"

    if file_path_results != nil && File.exist?(file_path_results) &&
        file_path_questions != nil && File.exist?(file_path_questions)

      f_results = File.open(file_path_results, 'r')
      f_questions = File.open(file_path_questions, 'r')

      @results = f_results.readlines
      @questions = f_questions.readlines

      f_results.close
      f_questions.close
    else
      puts "No file!"
    end
  end

  def questions
    @questions
  end

  def results
    @results
  end

end