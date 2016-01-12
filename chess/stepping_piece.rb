require_relative 'piece'
require_relative 'board'

class SteppingPiece < Piece
  # MOVES =
  # [
  #
  # ]

  def inbound_moves

    inbound = []
    curr_row, curr_column = @position

    moves.each do |new_pos|
      move_row, move_column = new_pos
      new_row, new_col = curr_row + move_row, curr_column + move_column
      inbound << [new_row, new_col] if new_row.between?(0, 7) && new_col.between?(0, 7)
    end
    inbound

  end

  def obstacle(valid_moves)
    valid_moves.select do |pos|
      is_null_piece?(pos) || is_enemy?(pos)
    end
    valid_moves
  end

  def move_array
    inbound_array = self.inbound_moves
    obstacle(inbound_array)
  end

  def moves
  end

end
