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
        moves << [y, x] if cell.empty? && can_flank?(y, x, game.turn)
      end
    end
    moves
  end

  private

  def set_initial_value
    @value[3][3].value = 1
    @value[4][4].value = 1
    @value[3][4].value = 2
    @value[4][3].value = 2
  end

  def can_flank?(y, x, turn)
    directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [0, 1],[0, 1],
      [1, -1], [1, 0], [1, 1]
    ]

    directions.any? do |dy, dx|
      next_y, next_x = y + dy, x + dx
      in_bounds?(next_y, next_x) && @value[next_y][next_x] != turn && @value[next_y][next_x] != nil && search_direction(next_y, next_x, dy, dx, turn)
    end
  end

  def search_direction(y, x, dy, dx, turn, initial: true)
    next_y, next_x = y + dy, x + dx
    return false unless in_bounds?(next_y, next_x)
    return true if @value[next_y][next_x] == turn
    return false if @value[next_y][next_x] == nil?

    search_direction(next_y, next_x, dy, dx, turn, initial: false)
  end

  def in_bounds?(y, x)
    y.between?(0, @range - 1) && x.between?(0, @range - 1)
  end
end
