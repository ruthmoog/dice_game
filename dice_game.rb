# We can use rand to, for example, write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:
# If I roll higher than my opponent, I win.
# Let's agree now that the program returning false means 'I lose', and true means 'I win'.
# Write the dice game as above.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)

def roll
  rand(1..6) + rand(1..6)
end

player1_score = roll
player2_score = roll

puts "p1: #{player1_score} | p2: #{player2_score}"
if player1_score > player2_score
  puts "I win"
else
  puts "I lose"
end
