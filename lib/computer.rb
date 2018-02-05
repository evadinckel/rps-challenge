class Computer
  attr_reader :weapon

  def initialize
    @weapons = %w[rock paper scissors].freeze
    @weapon = nil
  end

  def choose_weapon
    @weapon = @weapons.sample
  end
end
