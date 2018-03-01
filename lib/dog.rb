require 'pry'

class Dog

  #add owner here because a dog belongs to an owner
  attr_accessor :mood, :owner
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end 
end