# frozen_string_literal: true

class Board
  attr_accessor :board_positions, :players_moves

  def initialize
    @board_positions = []
    @players_moves = []
  end

  def display
    9.times do |i|
      symbol = board_positions.include?(i) ? symbol_to_display(i) : i
      if i == 2 || i == 5
        print "| #{symbol} |\n"
      elsif i == 8
        print "| #{symbol} |\n"
      else
        print "| #{symbol} "
      end
    end
  end

  private

  def symbol_to_display(position)
    index = board_positions.find_index(position)
    !index.nil? && index.even? ? 'X' : 'O'
  end
end
