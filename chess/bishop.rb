require_relative 'sliding_piece'
# require_relative 'piece'

class Bishop < SlidingPiece
  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265D".encode('utf-8')
  end

  DIRECTIONS = [
    [1,1],
    [1,-1],
    [-1,1],
    [-1,-1]
  ]

  def directions
    DIRECTIONS
  end






end
