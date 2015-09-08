require_relative 'board'
require_relative 'ship'

class Player

  attr_reader :board, :ships, :hits, :misses

  def initialize
    @board = Board.new
    @ships = []
    @hits = []
    @misses = []
  end

  def receive_hit(coord)
    @misses << coord
  end


  # def place(ship)
  #   ships << ship
  # end
end
