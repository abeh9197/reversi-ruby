class Tile
  # 値は1が黒　-1が白
  @value = nil

  def dark?
    return @value == 1
  end

  def light
    return @value == -1
  end

  def set_dark
    @value = 1
  end

  def set_light
    @value = -1
  end
end