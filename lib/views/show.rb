# frozen_string_literal: true

class Show
  attr_accessor :grid
  
  def initialize
    @grid
  end

  # affiche l'échran d'acceuil
  def welcome
    puts "Welcome Screen"
  end
end