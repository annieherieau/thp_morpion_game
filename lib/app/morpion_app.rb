# frozen_string_literal: true

class MorpionApp
  attr_accessor :show, :player1, :player2, :game, :play, :count, :history
  
  def initialize
    @show = Show.new
    @player1 = new_player(1)
    @player2 = new_player(2)
    @game = ''
    @play = true
    @@count = 0 #compteur des parties
    @@history = [] # historique des parties
  end

  # lancer une nouvelle partie
  def new_game
    @@count +=1
    @game = Game.new(@player1, @player2)
    show.new_game(@game)
    return @game
  end

  ##_________ METHODES OK 
  # créer un nouveau joueur
  def new_player(number)
    player = Player.new(number)
    show.ask_player_name(player, number)
    player.get_name
    return player
  end
end
