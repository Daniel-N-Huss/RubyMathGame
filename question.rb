class Question

  def initialize
    @answer = 4
    @user_guess = nil
  end

  def ask_question
    puts "What is 2 + 2?"
  end

  def answer_question
    @user_guess = gets.chomp.to_i

    if @user_guess == @answer
      puts "Great job!"
      true
    else
      puts "Wrong!"
      false
    end
  end

end