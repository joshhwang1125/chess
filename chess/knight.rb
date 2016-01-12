require_relative 'stepping_piece'

class Knight < SteppingPiece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265E".encode('utf-8')
  end

  MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]


  def moves
    MOVES
  end



end
