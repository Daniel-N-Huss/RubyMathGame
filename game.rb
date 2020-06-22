class Game

  attr_accessor :turn_count

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_turn = nil
    @turn_count = 0
  end

  def play_the_game
    while @player1.lives > 0 && @player2.lives > 0
      
      self.turn_count += 1
      
      current_question = Question.new

      current_turn = Turn.new(turn_count, @player1, @player2)
      
      current_turn.setup_turn

      current_turn.play_turn

      self.turn_end_announcement

    end

    self.game_over

  end
  # ================ Messages ================= #

  def start_game
    puts "    Welcome to MathGame!
    
    I hope you're ready to do some math and compete against your friend :)
      
    Each of you will take turns answering a math problem.
    
    Answer incorrectly, and you lose a life.
    
    Lose 3 lives, and the game is over!"
  end


  def turn_end_announcement
    puts "Let's check the standings:
    Player 1 has #{@player1.lives}/3 lives remaining
    Player 2 has #{@player2.lives}/3 lives remaining
    
    "
  end

  def game_over
    if @player1.lives == 0 
      puts "Oops, Player 1 ran out of lives! The game is over after #{@turn_count} questions!
      ***************************
      *Congratulations Player 2!*
      ***************************
      "
    end
    if @player2.lives == 0
      puts "Oops, Player 2 ran out of lives! The game is over after #{@turn_count} questions!
      ***************************
      *Congratulations Player 1!*
      ***************************
      "
    end
  end

end
