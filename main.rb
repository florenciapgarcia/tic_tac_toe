# frozen_string_literal: true
require_relative './lib/tic_tac_toe'

# todo Think about how you would set up the different elements within the game… What should be a class? Instance variable? Method? A few minutes of thought can save you from wasting an hour of coding.
# todo - Build your game, taking care to not share information between classes any more than you have to.
# TODO - Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

# first thing is I want the board to be displayed empty
# puts 'Welcome to the Tic Tac Toe game'
# puts "The first player's move will be marked with X, whilst the second player's moves will be marked with O"
game = TicTacToe.new
game.play_game
# puts 'First player, please choose a position for your mark'
# first_player = gets.chomp
# puts 'Second player, please choose a position for your mark'
# second_player = gets.chomp

# I need the user to keep getting prompt until they game is over
# todo - Build game's logic => when is the game over
# while no se sea menos que o until sea tanto y ahi hago el corte, pero que siga prompteando al user hasta que se cumpla con eso