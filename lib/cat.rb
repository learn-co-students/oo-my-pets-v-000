require 'pry'

class Cat
   attr_reader :name #can't change it's name
   attr_accessor :mood #can change it's mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
