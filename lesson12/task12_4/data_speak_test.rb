class DataSpeakTest

  def initialize
    @questions = [
        "1. Вам предстоит ординарная или деловая встреча. Выбивает ли Вас ее ожидание из колеи?",
        "2. Вызывает ли смятение или неудовольствие поручение выступать с докладом, сообщением, " +
            "информацией на каком либо совещании, собрании?",
        "3. Любишь говорить?"
    ]

    @results = [
        "Вы говорун!",
        "Вы полупокер!",
        "Вы молчун!",
    ]

  end

  def questions
    @questions
  end

  def results
    @results
  end

end