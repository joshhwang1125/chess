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
        if row == 1
          self[[row,column]] = Pawn.new([row,column], :black, self)
        elsif row == 6
          self[[row,column]] = Pawn.new([row,column], :red, self)
        elsif [row, column] == [0,0] || [row, column] == [0,7]
          self[[row,column]] = Rook.new([row,column], :black, self)
        elsif [row, column] == [7,0] || [row, column] == [7,7]
          self[[row,column]] = Rook.new([row,column], :red, self)
        elsif [row, column] == [0,1] || [row, column] == [0,6]
          self[[row,column]] = Knight.new([row,column], :black, self)
        elsif [row, column] == [7,1] || [row, column] == [7,6]
          self[[row,column]] = Knight.new([row,column], :red, self)
        elsif [row, column] == [0,2] || [row, column] == [0,5]
          self[[row,column]] = Bishop.new([row,column], :black, self)
        elsif [row, column] == [7,2] || [row, column] == [7,5]
          self[[row,column]] = Bishop.new([row,column], :red, self)
        elsif [row, column] == [0,3]
          self[[row,column]] = King.new([row,column], :black, self)
        elsif [row, column] == [7,3]
          self[[row,column]] = King.new([row,column], :red, self)
        elsif [row, column] == [0,4]
          self[[row,column]] = Queen.new([row,column], :black, self)
        elsif [row, column] == [7,4]
          self[[row,column]] = Queen.new([row,column], :red, self)
        else
          self[[row,column]] = NullPiece.new([row,column], :null, self)
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
