#require 'pry'

class Fish
  attr_accessor :mood, :owner
  attr_reader :name
  ### name cannot be changed
  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end


end ###<---- CLASS end
