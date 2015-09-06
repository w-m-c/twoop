# puts "Hi, Player1. What is your name?"
# player1_name = gets.chomp
# puts "Hello, #{player1_name}"

# puts "Hi, Player2. What is your name?"
# player2_name = gets.chomp
# puts "Hello, #{player2_name}"

class Player 
  def initialize(name, lives, points)
    @name = name
    @lives = 3
    @points = 0
  end

  def player_status
  puts "#{player1_name}, you have #{@lives} and #{points}"
  end 
end  

