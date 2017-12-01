require 'pry'

# create initialize method w/name as argument 
# initialize with a mood of nervous 
  # the mood can change
class Cat
  # code goes here
  attr_reader :name, :mood
  attr_accessor :mood
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
  
end