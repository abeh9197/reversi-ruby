require_relative "cell"

class Board
  def initialize
    @range = 8
    @value = Array.new(@range) { Array.new(@range) { Cell.new } }
    set_initial_value
  end

  def set_initial_value
    @value[3][3] = 1
    @value[4][4] = 1
    @value[3][4] = 2
    @value[4][3] = 2
  end

  def show
    @value.each do |row|
      puts row.join(' ')
    end
  end
end
