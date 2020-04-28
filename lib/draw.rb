class Draw
    attr_writer :count
    def is_draw?
        if @count > 9 
            return true
        end
    end
end