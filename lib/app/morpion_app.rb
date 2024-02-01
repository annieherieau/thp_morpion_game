# frozen_string_literal: true

class MorpionApp
  attr_accessor :show, :player1, :player2, :game, :play, :score_history
  
  def initialize
    @show = Show.new
    @player1 = new_player(1)
    @player2 = new_player(2)
    @game = nil
    @play = true
    @score_history = { count: 0, player1.name => 0, player2.name => 0, null: 0 }
  end

  # Lancer un nouveau game round
  def new_round
    (1..2).each do |i|
      i == 1 ? player = @player1 : player = @player2
       
      @show.round_game(self)
      @show.board(@game.board)
      break if @game.is_over?
      
      @show.ask_player_choice(player)
      @game.player_turn(i)
    end
  end



  # Demander au joueur s'il veut rejouer
  def play_again?
    puts 'ask_play_again NON'
    return false
  end

  # mise à jour du score
  def update_score
    puts 'UPdate score'
  end

  
  ##_________ METHODES OK 
  # créer un nouveau joueur
  def new_player(number)
    player = Player.new(number)
    show.ask_player_name(player, number)
    player.get_name
    return player
  end

  # lancer une nouvelle partie
  def new_game
    score_history[:count] += 1
    @game = Game.new(@player1, @player2)
    @show.game_title(self)
    return @game
  end

  # afficher le board
  def show_board
    @show.board(@game.board)
  end

  # fin de l'applcation
  def end
    @show.score_history(@score_history)
    @show.bye
  end
end
