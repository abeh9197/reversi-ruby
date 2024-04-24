require_relative 'board'
require_relative 'game'

board = Board.new
board.show

game = Game.new
game.require_input
