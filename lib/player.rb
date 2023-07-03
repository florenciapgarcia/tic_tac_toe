# frozen_string_literal: true

require_relative './board'

class Player
  attr_accessor :name, :moves
  @@total_players = []
  # WINS = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]].freeze

  def initialize
    puts 'Please enter your name'
    name = gets.chomp
    @name = name.capitalize
    @moves = []
    @@total_players << self
  end

  def update_moves(position)
    @moves << position
  end

  def self.total_players
    @@total_players
  end
end
