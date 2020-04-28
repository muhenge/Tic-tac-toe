#!/usr/bin/env ruby
require '../lib/validation.rb'
require '../lib/winner.rb'
require '../lib/draw.rb'
end_program = false

def board(arr)
  puts(" #{arr[0]} | #{arr[1]} | #{arr[2]} ")
  puts('-----------')
  puts(" #{arr[3]} | #{arr[4]} | #{arr[5]} ")
  puts('-----------')
  puts(" #{arr[6]} | #{arr[7]} | #{arr[8]} ")
  puts
end

def play_again?
  puts 'Do you want to play again? (yes, no)'
  loop do
    play_again = gets.chomp
    case play_again
    when 'no' then return true
    when 'yes' then puts "restarting game\n\n"
    else puts 'choice a valid word'
    end
    break if (play_again.include? 'yes') || (play_again.include? 'no')
  end
end

def validation(valid, count)
  loop do
    user_input = gets.chomp
    valid.user_input = user_input.to_i
    if valid.valid?
      if valid.avaliable?
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
end

end_program = false

loop do
  count = 1
  game_on = true
  valid = Validation.new
  win = Winner.new
  draw = Draw.new
  while game_on
    player = count.odd? ? 1 : 2
    puts "Is the turn of the player #{player}\n"
    puts "Please, select a number to play from 1 to 9\n\n"
    board(valid.token)
    validation(valid, count)
    win.arr = valid.token
    count += 1
    draw.count = count
    puts "winner player #{player}" if win.winning_move
    puts 'it\'s a draw!' if draw.draw?
    game_on = false if win.winning_move or draw.draw?
  end
  puts
  board(valid.token)
  end_program = play_again?
  break if end_program
end
