require 'pry'
# create initialize method w/name argument 

# create attr_accessor for mood 

# create attr_reader for name
class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood 
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
end