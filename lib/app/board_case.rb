# frozen_string_literal: true

class BoardCase
  attr_accessor :name, :line, :row, :value
  
  def initialize(name)
    @name = name 
    @value = ''
    @line = @name.chars.first
    @row = @name.chars.last
  end

  def is_empty?
    @value.empty?
  end
end