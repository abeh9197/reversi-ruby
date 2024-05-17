require_relative 'cell'

class Board
  attr_reader :value

  def initialize
    @range = 8
    @value = Array.new(@range) { Array.new(@range) { Cell.new } }
    set_initial_value
  end

  def update_board(input, game)
    puts input
    @value[input[0]][input[1]] = game.turn
  end

  def valid_moves(game)
    moves = []
    @value.each_with_index do |row, y|
      row.each_with_index do |cell, x|
        moves << [y, x] if cell.value == 0
    end
    moves
  end

  private

  def set_initial_value
    @value[3][3] = 1
    @value[4][4] = 1
    @value[3][4] = 2
    @value[4][3] = 2
  end
end
