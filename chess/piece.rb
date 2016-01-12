
class Piece
  attr_accessor :null, :position
  attr_reader :color, :board

  def initialize(position, color, board)
    @position = position
    @color = color
    @board = board # should we be able to alter the board with our piece class
    #  @alive = true #unsure whether we need
    @null = false
    @icon = " "
  end

  def to_s
    # king = "\u265A".encode('utf-8')
    case @color
    when :red
      " " + @icon.colorize(:red) + " "
    when :black
      " " + @icon.colorize(:black) + " "
    when :null
      "   "
    end
  end

  # def inspect
  #   #puts "O"
  # end

  # def move_array
  #
  #   #return a 2d array that returns everything that pieces can move
  # end

  def is_null_piece?(pos)
    @board[pos].null
  end

  def is_enemy?(pos)
    @board[pos].color != @color
  end


end
