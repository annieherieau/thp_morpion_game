# frozen_string_literal: true

class Player 
  attr_accessor :name, :number, :avatar, :sign, :choice
  
  def initialize(number)
    @name = ''
    @number = number
    @sign = number == 1 ? 'O' : 'X'
    @avatar = ['🐶', '🦄​', '🐯​', '🔥', '🍀', '🎲', '😸','🥰', '😁​', '😇', '😎', '🥳'].sample
    @choice = ''
  end

  ##_________ METHODES  OK 
  # demander quelle case il veut jouer
  def get_choice
    @choice = gets.chomp.upcase while @choice == ''
  end

  # demander son nom
  def get_name
    @name = gets.chomp while  @name == ''  
  end
end