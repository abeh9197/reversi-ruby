class Game
    def initialize
        @turn = 1
    end

    def require_input
        puts "Column Input"
        column_input = gets
        puts "Row Input"
        row_input = gets
    end
end
