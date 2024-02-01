# frozen_string_literal: true

class MorpionApp
  attr_accessor :screen, :game, :player1, :player2, :play
  
  def initialize
    @screen = Show.new
    @player1 = new_player(1)
    @player2 = new_player(2)
    @play = true
    @@count = 1 #compteur des parties
    @@history = [] # historique des parties
  end

  # créer un nouveau joueur
  def new_player(number)
    player = Player.new(number)
    screen.ask_player_name(player, number)
    player.get_name
    return player
  end

  def start_new_game
    puts 'Game.new(P1, P2)'
    # @game = Game.new(@player1, @player2)
  end

end