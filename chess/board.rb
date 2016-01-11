class Board
  attr_reader :grid

  def intitialize
    @grid = Array.new(8) { Array.new(8) }
  end

  def populate

  end

  def [](pos)
    row,column = pos
    @grid[row][column]
  end

  def []=(pos, value) #unsure whether we need
    row,column = pos
    @grid[row][column] = value
  end

  def move(start,finish)

  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end



end
