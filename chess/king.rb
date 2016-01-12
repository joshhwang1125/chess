require_relative 'stepping_piece'
# require_relative 'piece'


class King < SteppingPiece


  MOVES = [
    [0,1],
    [0,-1],
    [1,1],
    [1,0],
    [1,-1],
    [-1,1],
    [-1,0],
    [-1,-1]
  ]

  def moves
    MOVES
  end

  def to_s
    king = "\u265A"
    case @color
    when :red
      " " + king.encode('utf-8').colorize(:red) + " "
    when :black
      " " + king.encode('utf-8').colorize(:black) + " "
    end
  end

end
