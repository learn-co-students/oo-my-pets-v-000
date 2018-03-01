require 'pry'

class Cat

  #mood can be changed, so make both reader & writer methods; add owner here because a cat belongs to an owner
  attr_accessor :mood, :owner 
  #do attr_reader for name b/c you don't want it changed
  attr_reader :name 
  
  #initialize a cat instance with a name 
  def initialize(name)
    @name = name
    @mood = "nervous"
  end 
  
end