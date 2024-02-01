# frozen_string_literal: true

class Player 
  attr_accessor :name, :number, :avatar, :case_to_play
  
  def initialize(number)
    @name = ''
    @number = number
    @case_to_play = ''
    @avatar = ['🐶', '🦄​', '🐯​', '🔥', '🍀', '🎲', '😸','🥰', '😁​', '😇', '😎', '🥳'].sample
  end

  # demander son nom
  def get_name
    @name = gets.chomp while  @name == ''  
  end

  # demander quelle case il veut jouer
  def get_case_to_play
    puts "gets.comp @case_to_play"
    # verif case libre boardcase.is_free?
  end

end