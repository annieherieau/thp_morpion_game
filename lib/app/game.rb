# frozen_string_literal: true

class Game
  attr_accessor :player1, :player2, :board, :over, :winner
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @over = false
    @winner = ""
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
    @over = true if line_winner? || row_winner? || diag_winner?
    return @over
  end

  def line_winner?
    p1 = 0
    p2 = 0
    @board.set.each do |l, c|
      p1 = @board.set[l].count do |k,v|
        v.value == 'O'
      end
      break if p1 == 3
      p2 = @board.set[l].count do |k,v|
        v.value == 'x'
      end
      break if p2 == 3
    end
    @winner = @player1.name if p1 == 3
    @winner = @player2.name if p2 == 3
    return p1 == 3 || p2 == 3
  end

  def row_winner?
    false
  end

  def diag_winner?
    false
  end


end