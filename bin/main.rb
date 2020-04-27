#!/usr/bin/env ruby

count = 1
game_on = true
while game_on
  player = count.odd? ? 1 : 2
  puts "Is the turn of the player #{player}. Select one space (1-9)\n\n"

  puts(' 1 | 2 | 3 ')
  puts('-----------')
  puts(' 4 | 5 | 6 ')
  puts('-----------')
  puts(' 7 | 8 | 9 ')
  puts
  user_input = gets.chomp
  count += 1
  valid = true
  puts "you choosed the: #{user_input}"
  puts 'invalid move' unless valid
  winner = true
  puts "winner player #{player}" if winner
  draw = true
  puts 'it\'s a draw!' if draw
  game_on = false if winner
end
