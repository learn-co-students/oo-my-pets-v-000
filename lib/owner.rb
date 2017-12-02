require 'pry'

# create initialize method w/name argument 

# create class methods for 
  # - all 
  # - owner_count
  # - reset_all

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
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
     "I am a " + "#{@species}" + "."
  end 
  
  def name 
    @name
  end 
  
  def buy_fish(fish_name) 
    # add fishes to pets array 
    # this method should display a Fish instance
    # when you assign something equal to something i.e. @pets[:fish] = fish_name - this will override with new data everytime
    @pets[:fishes] << Fish.new(fish_name)
  end 
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end