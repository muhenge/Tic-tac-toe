class Winner
  def initialize(arr)
    @arr = arr
  end

  private 

  def horizontal_winning_move?
    index = 1
    3.times do
      return true if (arr[index] == 'x' && arr[index + 1] == 'x' && arr[index + 2] == 'x') || (arr[index] == 'o' && arr[index + 1] == 'o' && arr[index + 2] == 'o')
      index += 3
    end
  end
end

# [[1,4,7], [2, 5,8], [3, 6, 9]]
# [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# [[1, 5, 9], [3, 5, 7]]

