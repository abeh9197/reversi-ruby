class Game
  attr_reader :turn

  def initialize
    @turn = 1
    @winner = nil
  end

  def switch_turn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end
end
