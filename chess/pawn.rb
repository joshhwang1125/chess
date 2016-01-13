require_relative 'piece'

class Pawn < Piece

  def initialize(position, color, board)
    super(position, color, board)
    @icon =  "\u265F".encode('utf-8')
    @first_move = true
  end

  STEPS = [
    [1,0],
    [2,0]
  ]

  ATTACKS = [
    [1,1],
    [1,-1]
  ]

  def steps
    calculated_steps = STEPS
    @first_move == false ? calculated_steps = calculated_steps.take(1) : calculated_steps
    @color == :black ? calculated_steps : calculated_steps.map{ |step| step.map {|el| el * -1}}
  end

  def attacks
    @color == :black ? ATTACKS : ATTACKS.map{ |attack| attack.map {|el| el * -1}}
  end

  def unblocked_steps(inbound_move_arrays)
    valid_steps = []
    inbound_move_arrays.each do |pos|
      if is_null_piece?(pos)
        valid_steps << pos
      else
        break
      end
    end
    valid_steps
  end

  def attacking_steps
    attackable_pos = []
    curr_row, curr_column = @position
    attacks.each do |new_pos|
      move_row, move_column = new_pos
      new_row, new_col = curr_row + move_row, curr_column + move_column
      attackable_pos << [new_row, new_col] if is_enemy?([new_row, new_col])
    end
    attackable_pos.select { |pos| @board.in_bounds?(pos) }
  end

  def move_array #perhaps break apart
    inbound_array = self.inbound_move_array
    forward_array = unblocked_steps(inbound_array)
    total_array = forward_array + self.attacking_steps
  end

  ##after the pawn has moved, flip @first_move to false


end
