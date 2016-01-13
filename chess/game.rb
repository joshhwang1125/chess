require_relative 'requirement_file'
require_relative 'board'
require_relative 'player'
require_relative 'cursorable'
require_relative 'sliding_piece'
require_relative 'stepping_piece'
require_relative 'display'

class Game
  include Cursorable

  def initialize
    @board = Board.new
    @board.populate
    @display = Display.new(@board)
    @red_player = Player.new(@board)
    @black_player = Player.new(@board)
    @current_player = @red_player
  end

  def play
    selected_pos = @current_player.move
  end

end

if __FILE__ == $PROGRAM_NAME
  Game.new.play
end
