require_relative 'board'
require_relative 'game'

board = Board.new
board.show

game = Game.new
ret = game.require_input
board.update_board(ret)
board.show
