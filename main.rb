require_relative "player"
require_relative "game"

puts "Hi, Player1. What is your name?"
player1 = gets.chomp
puts "Hello, #{player1}!"

puts "Hi, Player2. What is your name?"
player2 = gets.chomp
puts "Hello, #{player2}!"

player1 = Player.new(player1)
player2 = Player.new(player2)

game = Game.new(player1, player2)

# game.play if player1.lives > 0 && player2.lives > 0

# if game.play 
#   if game.current_player == player1.name
#     player1.points += 1
#   else
#     player2.points +=1
#   end
# else
#    if game.current_player == player1.name
#     player1.lives -= 1
#   else
#     player2.lives -=1
#   end
# end

# if player1.lives > 0 && player2.lives > 0
#   Player.change_turn
#   Player.generate_question
# else
#   puts "bye"
# end


game.play



# puts generate_question
# puts verify_answer 
# change_turn
