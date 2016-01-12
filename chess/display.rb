require_relative 'board'
require_relative 'cursorable'
require 'colorize'

class Display
  include Cursorable

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
    @selected = false
  end

  def show_board
    puts "this is a coloriuze test".green
  end

  def move_cursor
  end

  def build_grid
   @board.grid.map.with_index do |row, i|
     build_row(row, i)
   end
  end

  def build_row(row, i)
    row.map.with_index do |piece, j|
      color_options = colors_for(i, j)
      piece.to_s.colorize(color_options)
    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :white
    elsif (i + j).odd?
      bg = :yellow
    else
      bg = :green
    end
    { background: bg }
  end

  def render
    system("clear")
    puts "Fill the grid!"
    puts "Arrow keys or WASD to move, space or enter to confirm."
    build_grid.each { |row| puts row.join }
  end
end
