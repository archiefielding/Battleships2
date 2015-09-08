require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(ship)
    ships << ship
  end

  def receive_a_hit(coord)
    ships.each { |ship| return 'hit' if ship.position == coord }
    return 'miss'
  end

end
