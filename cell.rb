# frozen_string_literal: true

class Cell
  attr_accessor :value

  def initialize
    @value = 0
  end

  def to_s
    @value.to_s
  end
end
