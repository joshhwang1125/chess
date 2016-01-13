require_relative 'piece'

class SteppingPiece < Piece
  def valid_moves(inbound_move_arrays)
    valid_moves = inbound_move_arrays.select do |pos|
      is_null_piece?(pos) || is_enemy?(pos)
    end
    valid_moves
  end

  def move_array #perhaps break apart
    inbound_array = self.inbound_move_arrays
    valid_moves(inbound_array)
  end


end
