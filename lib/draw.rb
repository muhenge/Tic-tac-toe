class Draw
  attr_writer :count

  def draw?
    return true if @count > 9

    false
  end
end
