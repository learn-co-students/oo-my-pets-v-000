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
# create class methods for 
# - all 
# - owner_count
# - reset_all

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self 
  end 
  
  def self.all 
    @@owners
  end 
  
  def self.count
    @@owners.count
  end 
  
  def self.reset_all 
    # count how many elements in the @@owners array
   # binding.pry
    @@owners = []
  end
  
  # create instance methods for 
    # - species 
    # - say_species 
    # - name 
    # - pets 
  def species 
    
  end 
  
end