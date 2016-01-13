
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
      "  " + @icon.colorize(:red) + "  "
    when :black
      "  " + @icon.colorize(:black) + "  "
    when :null
      "     "
    end
  end

  def inspect
    to_s
  end

  def inbound_move_array
    inbound = []
    curr_row, curr_column = @position
    steps.each do |new_pos|
      move_row, move_column = new_pos
      new_row, new_col = curr_row + move_row, curr_column + move_column
      inbound << [new_row, new_col] if new_row.between?(0, 7) && new_col.between?(0, 7)
    end
    inbound
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
### Moves logic

end
