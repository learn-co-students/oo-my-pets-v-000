require 'pry'
 # create initialize method w/name as argument 
 # create attr_accessor for mood - add to initialize method
 #  
class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end
end