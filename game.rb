class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    operators = [ :+, :*, :-]
    chosen_operator = operators.sample
    @sum = @num1.send(chosen_operator, @num2)
    puts "#{@current_player.name}, what is #{@num1} #{chosen_operator} #{@num2}?" 
    @answer = gets.chomp.to_i 
    # answer == @sum #correct answer
   end

  def verify_answer
    # answer = prompt_player_for_answer
    # if answer == @sum #correct answer
    if @answer == @sum
      @current_player.points += 1 
      puts "Congrats! You gained #{@current_player.points} points."
    else #wrong answer 
      @current_player.lives -= 1
      puts "Boo! You are down to #{@current_player.lives} lives."
    end 
  end

  def player_status
    puts "#{@current_player.name}, you now have #{@current_player.lives} lives and #{@current_player.points} points"
  end 

  def change_turn
    if @current_player == @player1
      @current_player = @player2
    else 
       @current_player = @player1
    end
  end

  def reset_lives
    @player1 = Player.new(@player1.name)
    @player2 = Player.new(@player2.name)
     # @player1.initialize(@player1.name)
     # @player2.initialize(@player2.name)
  end 

  def play_again
    puts "Would you like to play again? y/n"
    play_again = gets.chomp
    if play_again == "y" 
    reset_lives
    play
    else
    "Goodbye!"  
    end
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0 do
    generate_question
    verify_answer 
    player_status
    change_turn  
    end
    play_again
    end
    # play_again
  end
