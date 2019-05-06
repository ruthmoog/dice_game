# We can use rand to, for example, write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:
# If I roll higher than my opponent, I win.
# Let's agree now that the program returning false means 'I lose', and true means 'I win'.
# Write the dice game as above.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)

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