class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @user_guess = nil
  end

  def ask_question
    puts "What is #{@num1} + #{@num2}?"
  end

  def answer_question
    @user_guess = gets.chomp.to_i

    if @user_guess == @num1 + @num2
      puts "√√√ Correct! √√√"
      true
    else
      puts "XXX Wrong! XXX"
      false
    end
  end

end