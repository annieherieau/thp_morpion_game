# frozen_string_literal: true
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "app/player"
require "app/game"
require "app/board"
require "app/board_case"
require "app/morpion_app"
require "views/show"

# ---- Début de l'application
morpion = MorpionApp.new
show = morpion.show
player1 = morpion.player1
player1 = morpion.player2

play_again = true
# JOUER à MORPION : play_again == true
while play_again
  # GAME : game.is_over? == false
  game = morpion.new_game
  board = game.board
  # until game.is_over?
  show.board(board)










    # break if game.is_over?
  # end
  # --- fin GAME OVER : game.is_over? == true

  # AFFICHER LE SCORE

  # update score history
  morpion.update_score

  # PLAY AGAIN ? demander si nouvelle partie
  play_again = morpion.play_again?
end
# ____ Fin JOUER à MORPION : play_again == false

# afficher l'historique des scores
show.score_history(morpion.score_history)
show.bye
# ---- Fin de l'application


binding.pry