# frozen_string_literal: true

class Board
  attr_accessor :size, :played_cases, :set
  
  def initialize
    @size = 3
    @played_cases = []
    @set = built_set_of_cases #array of hashes
    # @cases_array = built_board_cases
  end

  # Construit la grille des cases
  # { A => { 1=> A1, 2 => A2, 3 => A3}, B => idem, C => idem }
  # board.set[lettre][num] = BoradCase.new(name)
  def built_set_of_cases
    set_hash = {}
    # lignes Hash{ Array [ ]}
    ('A'.ord ... ('A'.ord) + @size).each do |l_num|
      letter = l_num.chr
      set_hash[letter] = {}

      # colonnes Hash {}
      (1..@size).each do |num|
        case_name = letter + num.to_s
        set_hash[letter][num] = BoardCase.new(case_name)
      end
    end
    return set_hash
  end

  # # Création des cases
  # def built_board_cases
  #   array = []
  #   @grid.each do |line|
  #     line.each do |c|
  #       new_case = BoardCase.new(c)
  #       array << new_case
  #     end
  #   end
  #   return array
  # end

end