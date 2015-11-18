require 'pry'

class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(init_name, init_mood = "nervous")
    @name = init_name
    @mood = init_mood
  end
end