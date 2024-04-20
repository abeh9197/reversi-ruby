class Board
    def initialize
        @board = Array.new(8) { Array.new(8, "🟩") }
        @board[3][3] = '⚪'
        @board[3][4] = '⚫'
        @board[4][3] = '⚫'
        @board[4][4] = '⚪'
    end

    def display
        puts "  0  1  2  3  4  5  6  7"
        @board.each_with_index do |row, index|
            print "#{index} "
            puts row.join(' ')
        end
    end

    def place_stone(row, col, player)
        @board[row][col] = player == :black ? '⚫' : '⚪'
    end

    def [](row, col)
        @board[row][col]
    end

    def []=(row, col, value)
        @board[row][col] = value
    end
end

