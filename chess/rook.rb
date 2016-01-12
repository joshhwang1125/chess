require_relative 'sliding_piece'

class Rook < SlidingPiece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265C".encode('utf-8')
  end


end
