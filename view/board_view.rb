class BoardView
  def show(model)
    model.value.each do |row|
      puts row.join(' ')
    end
  end
end
