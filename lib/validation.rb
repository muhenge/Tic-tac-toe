class Validation
  attr_reader :token
  attr_accessor :user_input
  def initialize
    @user_input = user_input
    @token = [1, 2, 3, 4, 5, 6, 7, 8 , 9]
  end

  public

  def is_valid?
    (1..9).each do |x|
      return true if x  == @user_input
    end
    false 
  end

  def is_avaliable?
    @token[@user_input-1] == 'x' or @token[@user_input-1] == 'o' ? false : true
  end

  def add_symbol(turn)
    @token[@user_input-1] = (turn % 2).zero? ? 'x' : 'o' 
  end
end

# instance.user_input = 4
# instance.is_avaliable?
# instance.is_avaliable? ? (puts "is valid") : (puts "is not valid")

# instance = Validation.new
# if instance.is_valid?
#   if instance.is_avaliable?
#     instance.add_symbol(3)
#   else
#     puts "is not available"
#   end
# else
#   puts "is not valid"
# end

# puts instance.token

#arr = [1, 2, 3, 4, 5, 6, 7, 8 , 9]
#val = 3
#arr[val-1]
#ask to the player for a choice
#with the choice
#-validate
#--check the spaces to see if is empty or not
#---put the symbols
#winner
#draw