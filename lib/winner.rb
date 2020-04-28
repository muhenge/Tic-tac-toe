
class Winner

  DIAGONAL = [0,4,8,2,4,6]

  attr_writer :arr
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

  def diagonal_winning_move?
    index = 0
    2.times do
      return true if (@arr[DIAGONAL[index]] == 'x' && @arr[DIAGONAL[index+1]] == 'x' && @arr[DIAGONAL[index+2]] == 'x') || (@arr[DIAGONAL[index]] == 'o' && @arr[DIAGONAL[index+1]] == 'o' && @arr[DIAGONAL[index+2]] == 'o')
      index += 3
    end
    false
  end

  public

  def winning_move
    horizontal_winning_move? or vertical_winning_move? or diagonal_winning_move? ? true : false
  end
end

# win = Winner.new(['o',2,3,'o','o',6,'x',8,'x'])
# puts win.winning_move
# [[1,4,7], [2, 5,8], [3, 6, 9]]
# [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# [[1, 5, 9], [3, 5, 7]]

