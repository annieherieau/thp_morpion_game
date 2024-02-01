# frozen_string_literal: true

class Game
  attr_accessor :player1, :player2, :board
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
  end

  def is_over?


  end

end