
class Winner

  DIAGONAL_ONE = [1,5,9]
  DIAGONAL_TWO = [3,5,7]


  def initialize(arr)
    @arr = arr
  end
  private 

  def horizontal_winning_move?
    index = 0
    3.times do
      return true if (@arr[index] == 'x' && @arr[index + 1] == 'x' && @arr[index + 2] == 'x') || (@arr[index] == 'o' && @arr[index + 1] == 'o' && @arr[index + 2] == 'o')
      index += 3
    end
    false
  end
  def vertical_winning_move?
    index = 0
    3.times do
      return true if (@arr[index] == 'x' && @arr[index + 3] == 'x' && @arr[index + 6] == 'x') || (@arr[index] == 'o' && @arr[index + 3] == 'o' && @arr[index + 6] == 'o')
      index += 1
    end
    false
  end

  def diagonal_winning_move
    
  end

  public

  def winning_move
    horizontal_winning_move? ? true : false
    vertical_winning_move? ? true : false
    DIAGONAL_ONE
    DIAGONAL_TWO
  end
end

win = Winner.new([1,'x',3,4,'x',6,7,'x',9])
puts win.winning_move
# [[1,4,7], [2, 5,8], [3, 6, 9]]
# [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# [[1, 5, 9], [3, 5, 7]]

