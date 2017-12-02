require 'pry'

# create initialize method w/name argument 

# create class methods for 
  # - all 
  # - owner_count
  # - reset_all

class Owner
  # code goes here
  attr_accessor :pets
  attr_reader :name, :species
  @@owners = []
# create class methods for 
# - all 
# - owner_count
# - reset_all

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = "human" 
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
 # created species method as attr_reader above
  
  def say_species 
    puts "I am " + @species + " ."
  end 
end