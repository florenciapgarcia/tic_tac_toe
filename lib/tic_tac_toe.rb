# frozen_string_literal: true

require_relative './player'
require_relative './board'

class TicTacToe
  attr_accessor :first, :second, :game_over
  WINS = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]].freeze

  def initialize
    @first_player = Player.new
    @second_player = Player.new
    @board = Board.new
    @game_over = false
  end

  def play_game
    until @game_over
      Player.total_players.each do |player|
        puts "#{player.name}, please choose a position for your mark"
        position = Integer(gets.chomp)
        position_rules(position, player)
        @board.board_positions << position
        puts 'size: ', @board.board_positions.size

        break if game_rules(player)

      rescue StandardError => e
        puts e.message
        retry
      end
    end
  end

  private

  def position_rules(position, player)
    if !(position.is_a? Integer)
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

  def game_rules(player)
    if @board.board_positions.size >= 9
      @game_over = true
      puts 'There were no winners. It was a tie.'
    elsif moves_include_wins?(player.moves)
      @game_over = true
      puts "The winner is: #{player.name}."
    end
    @game_over
  end

  def moves_include_wins?(player_moves)
    if player_moves.size >= 3
      WINS.each do |winning_move|
        puts 'PLAYER_MOVES', player_moves
        puts 'included????: ', winning_move.include?(player_moves)
        return winning_move.include?(player_moves)
      end
    end
  end
end
