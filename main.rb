# frozen_string_literal: true
require_relative './lib/tic_tac_toe'

# todo Think about how you would set up the different elements within the game… What should be a class? Instance variable? Method? A few minutes of thought can save you from wasting an hour of coding.
# todo - Build your game, taking care to not share information between classes any more than you have to.
# TODO - Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

game = TicTacToe.new
game.play_game
# todo - Build game's logic => when is the game over
