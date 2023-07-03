# frozen_string_literal: true

class Board
  attr_accessor :board_positions

  def initialize
    @board_positions = []
  end

  def display
    # todo - display the board according to the positions in the array
    @board_positions.each do |position|

    end
  end

  # def display_board
  #   # @@board.each do |position|
  #   #
  #   # end
  #   puts "  |   |   |   |
  #          -------------
  #          |   |   |   |
  #          --------------
  #          |   |   |   |"
  # end
end
