class Validation
  attr_reader :token
  attr_accessor :user_input

  def initialize
    @user_input = user_input
    @token = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def is_valid?
    (1..9).each do |x|
      return true if x == @user_input
    end
    false
  end

  def is_avaliable?
    @token[@user_input - 1] == 'x' or @token[@user_input - 1] != 'o'
  end

  def add_symbol(turn)
    @token[@user_input - 1] = (turn % 2).zero? ? 'x' : 'o'
  end
end
