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

  # demande le nom du joueur
  def ask_player_name(player, number)
    print "#{player.avatar} Joueur n°#{number} : Quel est ton nom ? "
  end

   # affiche l'échran de fin
  def bye
    puts "Bye Screen"
  end
end