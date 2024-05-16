class Game
  attr_reader :turn

  def initialize
    @turn = 1
    @winner = nil
  end

  def switch_turn
    @turn = @turn == 1 ? 2 : 1
  end
end
