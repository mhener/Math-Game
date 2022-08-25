class Player
  attr_accessor :p1, :p2, :p1_life, :p2_life

  def initialize
    puts "Player 1, please enter your name"
    @p1 = $stdin.gets.chomp
    puts "Player 2, please enter your name"
    @p2 = $stdin.gets.chomp
    @p1_life = 3
    @p2_life = 3
  end

  def reduce_life(player)
    if (player == 'p1')
      self.p1_life -= 1
    elsif (player == 'p2')
      self.p2_life -= 1
    end
  end

  def life_check 
    if (self.p1_life == 0 || self.p2_life == 0)
      return false
    else 
      return true
    end
  end

end
