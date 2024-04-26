require_relative 'controller/game_controller.rb'
require_relative 'model/board.rb'
require_relative 'view/board_view.rb'

board = Board.new
board_view = BoardView.new
game_controller = GameController.new

board_view.show(board)

ret = game_controller.require_input
board.update_board(ret)
board_view.show(board)
