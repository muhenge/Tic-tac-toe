#!/usr/bin/env ruby
require '../lib/validation.rb'
require '../lib/winner.rb'
require '../lib/draw.rb'
catch :game do
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
      puts(" #{valid.token[0]} | #{valid.token[1]} | #{valid.token[2]} ")
      puts('-----------')
      puts(" #{valid.token[3]} | #{valid.token[4]} | #{valid.token[5]} ")
      puts('-----------')
      puts(" #{valid.token[6]} | #{valid.token[7]} | #{valid.token[8]} ")
      puts
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
      win.arr = valid.token
      count += 1
      draw.count = count
      puts "winner player #{player}" if win.winning_move
      puts 'it\'s a draw!' if draw.draw?
      game_on = false if win.winning_move or draw.draw?
    end
    puts
    puts(" #{valid.token[0]} | #{valid.token[1]} | #{valid.token[2]} ")
    puts('-----------')
    puts(" #{valid.token[3]} | #{valid.token[4]} | #{valid.token[5]} ")
    puts('-----------')
    puts(" #{valid.token[6]} | #{valid.token[7]} | #{valid.token[8]} ")
    puts
    puts 'Do you want to play again? (yes, no)'
    loop do
      play_again = gets.chomp
      case play_again
      when 'no' then throw :game
      when 'yes' then puts "restarting game\n\n"
      else puts 'choice a valid word'
      end
      break if play_again == 'yes' || play_again == 'no'
    end
  end
end
