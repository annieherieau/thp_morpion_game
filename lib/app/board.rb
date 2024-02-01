# frozen_string_literal: true

class Board
  attr_accessor :size, :played_cases, :set_of_cases
  
  def initialize
    @size = 3
    @played_cases = []
    @set_of_cases = built_set_of_cases #array of hashes
    # @cases_array = built_board_cases
  end

  # Construit la grille des cases
  def built_set_of_cases
    array = []
    # lignes
    ('A'.ord ... ('A'.ord) + @size).each do |x|
      letter = x.chr
      line_array = []
      # colonnes
      (1..@size).each do |y|
        case_name = letter + y.to_s
        line_array << {case_name => BoardCase.new(case_name)}
      end
      array << line_array
    end
    return array
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