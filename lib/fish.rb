require 'pry'

class Fish
  attr_accessor :pets, :mood, :owner
  attr_reader :name
  @@count = 0

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
