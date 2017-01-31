require_relative "./speak_test.rb"
require_relative "./data_speak_test.rb"

name = ARGV[0]

data_speak_test = DataSpeakTest.new
speak_test = SpeakTest.new

speak_test.start_question(name)

puts "Go!"

speak_test.count_answer(data_speak_test.questions)

speak_test.get_result(data_speak_test.results, speak_test.answer_count)