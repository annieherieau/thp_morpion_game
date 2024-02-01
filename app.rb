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

# JOUER à MORPION
morpion = MorpionApp.new
screen = morpion.show
user1 = morpion.player1
user2 = morpion.player2

# GAME - boucle 
while morpion.play
  game = morpion.new_game

  # GAME ROUND - boucle until over?


  # GAME OVER

  morpion.play = false
end

# ARRETER DE JOUER à MORPION
screen.bye



binding.pry