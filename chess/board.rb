require_relative 'requirement_file'

class Board
  attr_accessor :grid

  def initialize()
    @grid = Array.new(8) { Array.new(8) {nil} }
  end
  #
  def populate
    8.times do |row|
      8.times do |column|
        if row == 1 && column == 1
          self[[1,1]] = King.new([1,1], :black, self)
        elsif row == 1 && column == 2
          self[[1,2]] = King.new([1,2], :black, self)
        else
          self[[row,column]] = NullPiece.new
        end
      end
    end

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
