require_relative 'piece'
require_relative 'board'


class NullPiece < Piece

  def initialize
    @null = true
  end

  # def inspect
  #   "  "
  # end

  def to_s
    "   "
  end

end
