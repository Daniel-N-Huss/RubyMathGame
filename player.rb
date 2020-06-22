class Player
  
  attr_reader :name
  attr_accessor :lives
  
  def initialize(name)
    @lives = 3
    @name = name
  end
end