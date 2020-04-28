class Winner
  DIAGONAL = [0, 4, 8, 2, 4, 6].freeze
  attr_writer :arr

  private

  def horizontal_winning_move?
    index = 0
    3.times do
      if (@arr[index] == 'x' && @arr[index + 1] == 'x' && @arr[index + 2] == 'x') || (@arr[index] == 'o' && @arr[index + 1] == 'o' && @arr[index + 2] == 'o')
        return true
      end

      index += 3
    end
    false
  end

  def vertical_winning_move?
    index = 0
    3.times do
      if (@arr[index] == 'x' && @arr[index + 3] == 'x' && @arr[index + 6] == 'x') || (@arr[index] == 'o' && @arr[index + 3] == 'o' && @arr[index + 6] == 'o')
        return true
      end

      index += 1
    end
    false
  end

  def diagonal_winning_move?
    index = 0
    2.times do
      if (@arr[DIAGONAL[index]] == 'x' && @arr[DIAGONAL[index + 1]] == 'x' && @arr[DIAGONAL[index + 2]] == 'x') || (@arr[DIAGONAL[index]] == 'o' && @arr[DIAGONAL[index + 1]] == 'o' && @arr[DIAGONAL[index + 2]] == 'o')
        return true
      end

      index += 3
    end
    false
  end

  public

  def winning_move
    horizontal_winning_move? or vertical_winning_move? or diagonal_winning_move? ? true : false
  end
end
