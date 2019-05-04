require 'pry'

class Fish
  attr_accessor :mood
  attr_reader :name
  def initialize(init_name, mood="nervous")
    @name = init_name
    @mood = mood
  end
end