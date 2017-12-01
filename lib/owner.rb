require 'pry'

# create initialize method w/name argument 

# create class methods for 
  # - all 
  # - owner_count
  # - reset_all

class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :name
  @@owners = []
  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self 
  end 
  
  def self.all 
    @@owners
  end 
end