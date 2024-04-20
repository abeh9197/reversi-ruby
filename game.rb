require_relative 'board'

class Game
    def initialize
        @board = Board.new
        @players = [:black, :white]
    end

    def play
        @board.display
        @players.each do |player|
            puts "Player #{player} turn"
            play_turn
            break
        end
        puts "Game ended"
    end

    private

    def play_turn
        @board.display
        @board.move
    end
