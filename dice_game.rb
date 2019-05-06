def roll
  rand(1..7) + rand(1..7)
end

player1_score = 0
player2_score = 0

until player1_score == 2 || player2_score == 2 do
  player1_roll = roll
  player2_roll = roll
  puts "p1: #{player1_roll} | p2: #{player2_roll}"
  if player1_roll > player2_roll
    player1_score += 1
  else
    player2_score += 1
  end
end

puts "The winner is #{player1_score > player2_score ? 'player 1' : 'player 2'}!"
puts "p1: #{player1_score} points | p2: #{player2_score} points"