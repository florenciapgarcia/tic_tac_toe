require_relative './board'

class Player
  attr_accessor :name, :moves

  def initialize
    puts 'Please enter your name'
    name = gets.chomp
    @name = "Player #{name.capitalize}"
    @moves = []
    # @moves.push(@position)
    # puts @moves
  end

  def update_moves(position)
    @moves << position
  end

  def moves_rules(position)
    if position > 8 || position < 0
      puts 'Position needs to be a number between 0 and 8'
    end
  end
end