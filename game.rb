class Game
  def initialize
    @turn = 1
  end

  def require_input
    column_input = prompt_for_input('Column')
    row_input = prompt_for_input('Row')
    [column_input, row_input]
  end

  private

  def valid_input?(input)
    input =~ /^[0-9]$/ # =~ はパターンマッチング
  end

  def prompt_for_input(type)
    input = nil
    until valid_input?(input)
      puts "#{type} Input (0-9):"
      input = gets.chomp
    end
    input.to_i
  end
end
