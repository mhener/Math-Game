require './player.rb'
require './game.rb'

=begin

// CRITERIA
1. Creating a 2 player math game where players take turns to answer simple math addition problems
2. A new math question is generated for each turn by picking 2 numbers between 1 and 20
3. The player whose turn it is, is prompted the question and must answer correctly or lose a life
4. Both players will start with 3 lives
5. At the end of every turn, the game should output the new scores for both players
6. The game doesn't end until one of the players loses all their lives. 
7. At this point, the game should announce who won and what the other player's score is

// NOUNS:
1. Player: will contain player information such as name and score, player turn (loop)
2. Game: will contain the player and math questions, current player
=end

puts "Welcome to the Ruby Math Game"
puts "Let's test your Math Knowledge!"

p = Player.new
game = Game.new(p.p1, p.p2)

while (p.life_check)
  puts "----New Question for #{game.current_player}----"

  if (!game.question)
    p.reduce_life(game.player_id)
  end

  puts "Current life count is:"
  puts "#{p.p1}: #{p.p1_life}/3, #{p.p2}: #{p.p2_life}/3."

  game.next_player
end

puts "----GAME OVER----"
game.winner

