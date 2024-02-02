# frozen_string_literal: true

class Show
  attr_accessor :grid
  
  def initialize
    welcome
  end

  # Demande de rejouer
  def play_again
    skip_line
    print "Voulez-voy rejouer ? [o/n] "
  end
  
  # affiche le vainqueur
  def winner(player)
    skip_line
    center_text("⭐️" * 4)
    center_text("#{player.avatar} #{player.name} gagne la partie !!")
  end

  # Affich ematch nul
  def null
    skip_line
    center_text("❌ ⭕️ " * 3)
    center_text(" C'est un match nul !!")
  end
  ##_________ METHODES OK 

  def score_history(app)
    skip_line
    title ("Tableau des Scores")
    skip_line
    puts "Nombre de parties : #{app.score_history[:count]}"
    puts "#{app.player1.avatar} Joueur #{app.player1.name} : #{app.score_history[app.player1.name]}"
    puts "#{app.player1.avatar} Joueur #{app.player2.name} : #{app.score_history[app.player2.name]}"
  end

  # demande le choix du joueur
  def ask_player_choice(player)
    print "#{player.avatar} #{player.name}, c'est ton tour : "
  end

  # affichage du Plateau de jeu
  def board(board)
    skip_line
    str = (' ' * 3)
    (1..board.size).each do |num|
       str += num.to_s.center(4, ' ')
    end
    puts str.center(50, ' ')
    puts ('-' * (board.size * 5)).center(50, ' ')
    board.set.each do |lettre , line|
      # str = lettre.center(3, ' ') + '|'
      str = "#{lettre} |"
      line.each do |num, board_case|
        str += board_case.value.center(3, ' ') + '|'
      end 
      # str += ("#{' ' * 3}#{line('-', 3 * board.size)}").center(50, ' ')
      # str += "\n"
      puts str.center(50, ' ')
      puts ('-' * (board.size * 5)).center(50, ' ')
    end
  end

   # appuyer pour continuer
   def pause
    skip_line
    print 'Appuyer sur une touche pour continuer'
    gets.chomp
  end

  # affiche le titre de la partie
  def game_title(app)
    clear
    title("MORPION - Partie n°#{app.score_history[:count]}")
    text = "#{app.player1.avatar} #{app.player1.name.upcase}  vs  #{app.player2.name.upcase} #{app.player2.avatar}"
    center_text(text)
    center_text('~' * (text.length + 10))
  end

  # affiche le titre de la partie en cours
  def round_game(app)
    game = app.game
    game_title(app)
  end

  # affiche l'écran d'accueil
  def welcome
    clear
    title("JOUONS AU MORPION")
  end

  # affiche l'échran de fin
  def bye
    skip_line
    title("BYE BYE")
  end

  # demande le nom du joueur
  def ask_player_name(player, number)
    print "#{player.avatar} Joueur n°#{number} : Quel est ton nom ? "
  end

  private
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
 
end