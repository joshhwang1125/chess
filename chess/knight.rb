require_relative 'stepping_piece'
require_relative 'piece'
require_relative 'board'


class Knight < SteppingPiece
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



end
