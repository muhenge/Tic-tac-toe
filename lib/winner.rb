class Winner
  DIAGONAL = [0, 4, 8, 2, 4, 6].freeze
  attr_writer :arr

  private

  def horizontal?
    index = 0
    3.times do
      return true if (@arr[index] == 'x' && @arr[index + 1] == 'x' && @arr[index + 2] == 'x')
      return true if (@arr[index] == 'o' && @arr[index + 1] == 'o' && @arr[index + 2] == 'o')
      index += 3
    end
    false
  end

  def vertical?
    index = 0
    3.times do
      return true if (@arr[index] == 'x' && @arr[index + 3] == 'x' && @arr[index + 6] == 'x')
      return true if (@arr[index] == 'o' && @arr[index + 3] == 'o' && @arr[index + 6] == 'o')
      index += 1
    end
    false
  end

  def diagonal?
    index = 0
    2.times do
      return true if (@arr[DIAGONAL[index]] == 'x' && @arr[DIAGONAL[index + 1]] == 'x' && @arr[DIAGONAL[index + 2]] == 'x')
      return true if (@arr[DIAGONAL[index]] == 'o' && @arr[DIAGONAL[index + 1]] == 'o' && @arr[DIAGONAL[index + 2]] == 'o')
      index += 3
    end
    false
  end

  public

  def winning_move
    horizontal? or vertical? or diagonal? ? true : false
  end
end
