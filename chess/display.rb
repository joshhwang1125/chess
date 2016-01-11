require 'colorize'
require_relative "cursorable"

class Display
  include cursorable

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end


end
