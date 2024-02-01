# frozen_string_literal: true

class Player 
  attr_accessor :name, :case_to_play
  
  def initialize
    @name = ask_name
    @case_to_play = ''
  end

  # demander son nom
  def ask_name
    @name = ''
    # verif non vide
    # @name = gets.chomp while  @name == ''
    puts "gets.comp @name"   
  end

  # demander quelle case il veut jouer
  def ask_case_to_play
    puts "gets.comp @case_to_play"
    # verif case libre boardcase.is_free?
  end

end