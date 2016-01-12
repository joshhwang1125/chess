require_relative 'stepping_piece'
require_relative 'piece'
require_relative 'board'


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

  def inspect
    puts "X"
  end



end
