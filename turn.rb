class Turn

  # Each turn needs to know which player it is asking, ask a question, and handle the result accordingly.
  attr_accessor :current_player, :current_question

  def initialize(player)
    @player = player
    @current_question = Question.new
  end

  def play_turn
    current_question.ask_question
    result = current_question.answer_question

    if !result
      @player.lives -= 1
    end
  end
end

