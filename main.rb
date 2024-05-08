require_relative 'controller/game_controller'
require_relative 'model/board'
require_relative 'model/game'
require_relative 'view/board_view'

board = Board.new
board_view = BoardView.new
game = Game.new
game_controller = GameController.new

i = 0
while i < 10 do
    board_view.show(board)

    ret = game_controller.require_input
    board.update_board(ret, game)
    i = i + 1
end
