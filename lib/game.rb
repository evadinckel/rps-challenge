class Game
  attr_accessor :player, :computer

  RULES = { paper: 'rock', scissors: 'paper', rock: 'scissors' }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def fight
    return 'You win!' if RULES[(@player.weapon).to_sym] == @computer.weapon
    return 'Computer wins!!' if RULES[(@computer.weapon).to_sym] == @player.weapon
    "It's a draw!"
  end
end
