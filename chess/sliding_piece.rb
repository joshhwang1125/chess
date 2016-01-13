require_relative 'piece'
require_relative 'board'
class SlidingPiece < Piece


  def move_array
    valid_moves = []
    directions.each do |vector|
      new_pos = [@position[0] + vector[0], @position[1] + vector[1]]
      until out_of_bounds?(new_pos)
        if is_null_piece?(new_pos)
          valid_moves << new_pos
        elsif is_enemy?(new_pos)
          valid_moves << new_pos
          break
        else
          break
        end
        new_pos = [new_pos[0] + vector[0], new_pos[1] + vector[1]]
      end
    end
    valid_moves
  end

  def out_of_bounds?(pos)
    row, col = pos
    !row.between?(0, 7) || !col.between?(0, 7)
  end
end
