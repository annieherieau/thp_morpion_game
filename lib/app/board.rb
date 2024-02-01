# frozen_string_literal: true

class Board
  attr_accessor :size, :played_cases, :array_of_cases, :set
  
  def initialize
    @size = 3
    @played_cases = []
    @array_of_cases = []
    @set = built_set_of_cases #array of hashes
  end

# _______ METHODES OK

  # jouer la case
  def play_case(player)
    played_case = set[player.choice[0]][player.choice[1].to_i]
    played_case.value = player.sign
    @played_cases << played_case
    return played_case
  end

  # vérifier si la case est libre
  def is_valid_choice?(player_choice)
    if @array_of_cases.include?(player_choice)
      played_case = @set[player_choice[0]][player_choice[1].to_i]
      return played_case.is_empty?
    else
      return false
    end
  end

  # Construit la grille des cases
    # { 'A' => { 1=> 'A1', 2 => 'A2', 3 => 'A3'}}, { 'B' => { 1=>'B1', 2 => 'B2', 3 => 'B3'}}, { 'C' => { 1=>'C1', 2 => 'C2', 3 => 'C3'}}}
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
        @array_of_cases.push(case_name)
        set_hash[letter][num] = BoardCase.new(case_name)
      end
    end
    return set_hash
  end

end