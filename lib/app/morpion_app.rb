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


  # Demander au joueur s'il veut rejouer
  def play_again?
    show.play_again
    user_input = gets.chomp.downcase until user_input == 'o' || user_input == 'n'
    return true if user_input == 'o'
    return false if user_input == 'n'
  end

  # mise à jour du score
  def end_game
    @show.round_game(self)
    @show.board(@game.board)
    if @game.winner == ''
      @show.null
    else
      @score_history[@game.winner] += 1
      @game.winner == @player1.name ? winner = @player1 : winner = @player2 
      @show.winner(winner)
    end
  end
  
  ##_________ METHODES OK 

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
    @player1.choice = ''
    @player2.choice = ""
    return @game
  end

  # afficher le board
  def show_board
    @show.board(@game.board)
  end

  # fin de l'applcation
  def end
    @show.score_history(self)
    @show.bye
  end
end
