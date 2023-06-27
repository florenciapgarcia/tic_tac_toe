require_relative './player'
require_relative './board'

class TicTacToe
  attr_accessor :first, :second

  def initialize
    @first_player = Player.new
    @second_player = Player.new
    @board = Board.new
  end

  def play_game
    while @board.board_positions.size < 8
      begin
        puts "#{@first_player.name}, please choose a position for your mark"
        @first = Integer(gets.chomp)
        moves_rules(@first, @first_player)

        puts "#{@second_player.name}, please choose a position for your mark"
        @second = Integer(gets.chomp)
        moves_rules(@second, @second_player)
      rescue StandardError => e
        puts e.message
        retry
        # @board.board_positions.push(@first, @second)
      end
    end
    # puts @first_player.moves
  end

  private

  def moves_rules(position, player)
    puts "BOARD #{@board.board_positions}"
    # todo - limit the amount of moves that can be set. maybe send an error if more than
    if !(position.is_a? Integer)
      puts 'soynumero'
      raise 'You need to enter a number'
    elsif position > 8 || position.negative?
      raise 'You need to enter a number between 0 and 8'
    elsif player.moves.size > 4
      raise 'No more moves allowed'
    elsif @board.board_positions.include?(position)
      raise "That #{position} already taken, please try another"
    else
      player.moves << position
    end
  end

  # @first_player << @first
  # @second_player << @second
  # @board.push(@first_player, @second_player)
end
