class Draw
  attr_writer :count

  def is_draw?
    return true if @count > 9
  end
end
