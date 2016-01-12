require_relative 'piece'
require_relative 'board'

class NullPiece < Piece

  def initialize(position, color, board)
    super(position, color, board)
    @null = true
    @icon = " "
  end
end
