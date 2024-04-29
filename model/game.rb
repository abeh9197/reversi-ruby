class Game
  attr_reader :turn

  def initialize
    @turn = 1
    @winner = nil
  end
end
