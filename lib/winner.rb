class Winner
  DIAG = [0, 4, 8, 2, 4, 6].freeze

  attr_writer :arr

  private

  def horizontal?
    index = 0
    3.times do
      %w[x o].each { |x| return true if [@arr[index], @arr[index + 1], @arr[index + 2]].all?(x) }
      index += 3
    end
    false
  end

  def vertical?
    index = 0
    3.times do
      %w[x o].each { |x| return true if [@arr[index], @arr[index + 3], @arr[index + 6]].all?(x) }
      index += 1
    end
    false
  end

  def diagonal?
    index = 0
    2.times do
      %w[x o].each { |x| return true if [@arr[DIAG[index]], @arr[DIAG[index + 1]], @arr[DIAG[index + 2]]].all?(x) }
      index += 3
    end
    false
  end

  public

  def winning_move
    horizontal? or vertical? or diagonal? ? true : false
  end
end
