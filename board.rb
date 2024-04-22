class Board
    def initialize
        @range = 8
        @value = Array.new(@range) { Array.new(@range) }
    end
end