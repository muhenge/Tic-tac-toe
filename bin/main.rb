#!/usr/bin/env ruby

count = 1
game_on = true
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
    if is_valid?
      if is_avaliable?
        puts "you choosed the: #{user_input}"
        break
      else
        puts 'is not avaliable'
      end
    else
      puts 'is not valid'
    end
  end
  count += 1
  winner = true
  puts "winner player #{player}" if winner
  draw = true
  puts 'it\'s a draw!' if draw
  game_on = false if winner or draw
end
