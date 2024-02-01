# frozen_string_literal: true

class Game
  attr_accessor :player1, :player2, :board, :over
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @over = false
  end

  # tour du joueur
  def player_turn(num)
    num == 1 ? player = @player1 : player = @player2
    player.get_choice until @board.is_valid_choice?(player.choice)
    @board.play_case(player)
    is_over?
  end

  # Game over ? toutes les cases jouées / joueur gagnant
  def is_over?
    @over = true if @board.played_cases.length ==  @board.array_of_cases.length
    return @over
  end

end