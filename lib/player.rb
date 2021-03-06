require_relative 'board'
require_relative 'ship'


class Player

  attr_reader :board, :ships, :hits, :misses, :new_ships

  def initialize
    @board     = Board.new
    @ships     = []
    @hits      = []
    @misses    = []
  end

  def receive_miss(coord)
    @misses << coord
    'miss'
  end

  def receive_hit(coord)
    @hits << coord
    'hit'
  end

  def place(ship)
    ships.each do |x|
      if x.position == ship.position
      fail "Ships may not overlap!"
      end
    end
    ships << ship
  end

  def lost
    if @ships == @hits
      return 'Game Over - You Lose'
    else
      return 'Try again'
    end
  end

  def fire(coord)
    ships.each do |ship|
      if ship.position == coord
        return "hit!"
      end
    end
    "missed!"
  end

  # def check_ships
    
  # end

end
