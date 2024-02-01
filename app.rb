# frozen_string_literal: true
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require "app/game"
require "app/player"
require "app/board"
require "app/board_case"
require "views/show"

# WELCOME SCREEN
screen = Show.new
screen.welcome


binding.pry