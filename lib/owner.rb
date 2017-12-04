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
  
  def buy_dog(dog_name) 
    @pets[:dogs] << Dog.new(dog_name)
  end 
  
  def walk_dogs
    # this method will change the dog's mood 
    # you'll need to access mood, set to "happy" 
    walk = @pets[:dogs].collect do |f|
      f.mood = "happy"
    end
  end 
  
  def play_with_cats 
    # changes mood attr to "happy"
    # return string "happy"
    @pets[:cats].collect do |c| 
      c.mood = "happy"
    end 
  end
  
  def feed_fish
    @pets[:fishes].collect do |feed|
      feed.mood = "happy"
    end
  end 
  
  def sell_pets
    # each pet mood is set to happy in the test 
    # change mood back to nervous
   
#    # reset all on pets hash or pets arrays
#    # change mood to nervous
   
     @pets[:dogs].collect do |f|
      if f.mood == "happy"
        f.mood = "nervous"
      end
     end 
    @pets[:fishes].collect do |c|
      if c.mood == "happy"
        c.mood = "nervous"
      end
    end
      @pets[:cats].collect do |f|
      if f.mood == "happy"
        f.mood = "nervous"
      end
    end
     @pets = {fishes: [], cats: [], dogs: []}
  end
    
  def list_pets
    # this method should show what individual pets were created
    binding.pry
    buy_fish(fish_name)
    buy_cat(cat_name)
    buy_dog(dog_name)
  end
    
    
    
    
    
    
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end