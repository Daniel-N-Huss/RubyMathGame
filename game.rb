class Game

  def initialize
    @player1 = Player.new
    @current_question = nil
  end

  def play_the_game
    while @player1.lives > 0
      current_question = Question.new

      current_question.ask_question
      result = current_question.answer_question

      if !result
        @player1.lives -= 1
      end
    end

    self.game_over

  end
  # ================ Messages ================= #

  def start_game
    puts "Welcome to MathGame!
    
    I hope you're ready to do some math and compete against your friend :)
      
    Each of you will take turns answering a math problem.
    
    Answer incorrectly, and you lose a life.
    
    Lose 3 lives, and the game is over!
    
    Ready player 1?"
  end

  def game_over
    puts "Oops, you ran out of lives! Game over!"
  end
end
