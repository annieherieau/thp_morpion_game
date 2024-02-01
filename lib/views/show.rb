# frozen_string_literal: true

class Show
  attr_accessor :grid
  
  def initialize
    welcome
    @grid
  end

  # affiche l'échran d'acceuil
  def welcome
    puts "Welcome Screen"
  end

   # affiche l'échran de fin
  def bye
    puts "Bye Screen"
  end
end