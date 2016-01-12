require_relative 'sliding_piece'


class Queen < SlidingPiece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265B".encode('utf-8')
  end


end
