# frozen_string_literal: true
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "app/morpion_app"
require "app/game"
require "app/player"
require "app/board"
require "app/board_case"
require "views/show"

# JOUER à MORPION
morpion = MorpionApp.new
screen = morpion.screen
user1 = morpion.player1
user2 = morpion.player2

# GAME - boucle 
while morpion.play
  morpion.start_new_game

  # GAME ROUND - boucle until over?


  # GAME OVER

  morpion.play = false
end

# ARRETER DE JOUER à MORPION
screen.bye



binding.pry