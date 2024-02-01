# frozen_string_literal: true

class Show
  attr_accessor :grid
  
  def initialize
    welcome
    @grid
  end

  def board(board_array)
    board_array.each {|line| puts line}
  end

  def score_history(hash)
    puts "AFFICHAGE HISTORIQUE DES PARTIES"
    puts hash
  end

  ##_________ METHODES OK 

  # affiche le début de la nouvelle partie
  def new_game(game)
    text = "#{game.player1.avatar} #{game.player1.name.upcase}  vs  #{game.player2.avatar} #{game.player2.name.upcase}"
    clear
    title('Nouvelle partie')
    center_text(text)
    center_text('-' * (text.length + 10))
  end

  # effacer l'écran
  def clear 
    system('clear')
  end

  # effacer l'écran
  def line (car = '-', nb_car=50)
    puts (car * nb_car)
  end

  # sauter des lignes
  def skip_line(number=1)
    puts "\n" * number
  end

  # positionner un texte au centre
  def center_text(text, border = '', nb_car=50)
    print border
    print text.center(nb_car - border.length * 2, ' ')
    puts border
  end

  # écrire un titre
  def title(text, border='|', nb_car=50)
    line
    center_text(text, border, nb_car)
    line
  end

  # affiche l'écran d'accueil
  def welcome
    clear
    title("JOUONS AU MORPION")
  end

  # demande le nom du joueur
  def ask_player_name(player, number)
    print "#{player.avatar} Joueur n°#{number} : Quel est ton nom ? "
  end

  # affiche l'échran de fin
  def bye
    skip_line
    title("BYE BYE")
  end
end