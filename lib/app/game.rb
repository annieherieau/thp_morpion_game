# frozen_string_literal: true

class Game
  attr_accessor :player1, :player2
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end