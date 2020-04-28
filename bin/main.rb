#!/usr/bin/env ruby
require '../lib/validation.rb'
require '../lib/winner.rb'
require '../lib/draw.rb'
count = 1
game_on = true
valid = Validation.new
win = Winner.new
draw = Draw.new
while game_on
  player = count.odd? ? 1 : 2
  puts "Is the turn of the player #{player}\n"
  puts "Please, select a number to play from 1 to 9\n\n"
  puts(' 1 | 2 | 3 ')
  puts('-----------')
  puts(' 4 | 5 | 6 ')
  puts('-----------')
  puts(' 7 | 8 | 9 ')
  puts
  loop do
    user_input = gets.chomp
    valid.user_input = user_input.to_i
    if valid.is_valid?
      if valid.is_avaliable?
        puts "you choosed the: #{user_input}"
        valid.add_symbol(count)
        break
      else
        puts 'is not avaliable'
      end
    else
      puts 'is not valid'
    end
  end
  win.arr = valid.token
  count += 1
  draw.count = count
  puts "winner player #{player}" if win.winning_move
  puts 'it\'s a draw!' if draw.is_draw?
  game_on = false if win.winning_move or draw.is_draw?
end
