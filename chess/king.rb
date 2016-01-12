require_relative 'stepping_piece'
# require_relative 'piece'


class King < SteppingPiece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265F".encode('utf-8')
  end

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


end
