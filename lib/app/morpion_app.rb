# frozen_string_literal: true

class MorpionApp
  attr_accessor :screen, :game, :player1, :player2, :play
  
  def initialize
    @screen = Show.new
    @player1 = Player.new
    @player2 = Player.new
    @play = true
    @@count = 1 #compteur des parties
    @@history = [] # historique des parties
  end

  def start_new_game
    puts 'Game.new(P1, P2)'
    # @game = Game.new(@player1, @player2)
  end

end