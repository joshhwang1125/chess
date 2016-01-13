require_relative 'sliding_piece'

class Rook < SlidingPiece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265C".encode('utf-8')
  end

  # def moves
  #    potential_moves = []
  #    (1..7).times do |space|
  #      potential_moves << [0, space]
  #      potential_moves << [space, 0]
  #    end
  #    potential_moves
  # end

  DIRECTIONS = [
    [0,1],
    [0,-1],
    [-1,0],
    [1,0],
  ]

  def directions
    DIRECTIONS 
  end





end
