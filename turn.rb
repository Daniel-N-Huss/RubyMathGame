class Turn

  # Each turn needs to know which player it is asking, ask a question, and handle the result accordingly.
  # Turns can be our exit from the game
  attr_accessor :current_player

  def initialize(turnNum, player1, player2)
    @turnNum = turnNum
    @player1 = player1
    @player2 = player2
    @current_player = nil
  end

  def start_turn
    if @turnNum % 2 == 0
      self.current_player = @player2
    else
      self.current_player = @player1
    end
    puts "Question ##{@turnNum}. This one is for #{current_player}!"
  end
end

