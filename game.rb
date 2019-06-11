module Game

  attr_reader :player1, :player2

  def initialize
    @round = 1
    @turn_handling = 0
    puts "Player 1 - What is your Name?"
    playerName = gets.chomp
    @player1 = Player.new playerName
    puts "\nPlayer 2 - What is your Name?"
    playerName = gets.chomp
    @player2 = Player.new playerName

    puts "\n#{@player1.name} you have #{@player1.life} chances left."
    puts "#{@player2.name} you have #{@player2.life} chances left."
  end

  def startRound

    case @turn_handling
    when 0
      current_player = @player1
    when 1
      current_player = @player2
    end

    puts "\nRound " + @round.to_s + "!"
    puts "#{current_player.name} it's your turn to answer!"
    current_question = Question.new
    answer = gets.chomp.to_i
    if answer == current_question.expected_answer
      puts "\nCongrats"
      @round = @round + 1
      @turn_handling = (@turn_handling + 1) % 2
    else
      puts "\nWRONG"
      current_player.loseLife
      @round = @round + 1
      @turn_handling = (@turn_handling + 1) % 2
    end
  end

  def setLoser
    case @turn_handling
      when 0
        puts "\n#{@player1.name} has won the game"
      when 1
        puts "\n#{@player2.name} has won the game"
    end

  end
end