require_relative 'piece'
require_relative 'board'


class NullPiece < Piece

  def initialize
    @null = true
  end

end
