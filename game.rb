class Game
  attr_reader :p1, :p2
  attr_accessor :player, :player_id

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @player = self.p1
    @player_id = 'p1'
  end

  def current_player
    player
  end

  def next_player
    if (self.player == self.p1)
      self.player = self.p2
      self.player_id = 'p2'
    elsif (self.player == self.p2)
      self.player = self.p1
      self.player_id = 'p1'
    end
  end

  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    result = num1 + num2

    puts "What is the sum of #{num1} and #{num2}?"
    answer = gets.chomp.to_i

    if (answer == result)
      puts "Correct!"
      return true
    else 
      puts "Incorrect! The correct answer is #{result}"
      return false
    end
  end

  def winner 
    puts "#{player} is the winner!"
  end

end


