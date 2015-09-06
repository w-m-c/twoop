class Game
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    operators = ['+', '*', '-']
    chosen_operator = operators.sample
    @sum = @num1.send(chosen_operator, @num2)
    puts "#{@current_player}, what is #{@num1} #{chosen_operator} #{@num2}?" 
   end

  def prompt_player_for_answer 
    puts "What is your answer?"
    gets.chomp.to_i
  end

  def verify_answer
    answer = prompt_player_for_answer
    if answer == @sum #correct answer
      @players.points = @players.points + 1 
      puts "Congrats! You now have #{@players.points} points."
    else #wrong answer 
      @players.lives = @players.lives - 1
      puts "Boo! You now have #{@players.lives} lives."
    end 
  end

  def change_turn
    if current_player = player1
      current_player = player2
    else 
       current_player = player2
       current_player = player1
    end
  end

  def play
    generate_question
    verify_answer 
    change_turn
  end
end
