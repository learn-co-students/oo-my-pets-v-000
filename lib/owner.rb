#an owner will know about all its pets, 
# be able to buy a pet
# set the name of a pet
# change a pet's mood through walking, feeding, or playing with it
# sell all of its pets when it moves

class Owner
  attr_accessor :name, :pets
  @@owner = []      #empty array of owners

  def initialize(species)
    @name = name        #owner is initialized and can have a name 
    @species = species  #initializes with a species-this can only happen with the attr_reader below
    @pets = {fishes: [], cats: [], dogs: []}      #is initialized with a pets attribute as a hash with 3 keys
    @@owner << self     #a new owner is being pushed into the class variable @@owner every time an owner is initialized
    
  end

  def species         #attr_reader
    @species
  end

  def self.all        #keeps track of the owners that are being created
    @@owner
  end

  def self.reset_all
    self.all.clear      # can reset the owners that have been created
  end

  def self.count        #can count how many owners have been created
    @@owner.count       #does reset and count go hand in hand?  If I delete one then why does the other fail?
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)       #can buy a fish that is an instance of the Fish class and knows about its fishes
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)          #can buy a cat that is an instance of the Fish class and knows about its cats
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)           #can buy a dog that is an instance of the Fish class and knows about its dogs
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|            #walks the dogs which makes the dogs' moods happy
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

def sell_pets
  self.pets.each do |species, animals|
    animals.each do |animal|
    animal.mood = "nervous"
  end
    animals.clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end



end




































# class Owner
#   attr_accessor :name, :pets
#   @@owners = []

#   def initialize(species)  #can initialize an owner
#     @name = name
#     @species = species
#     @@owners << self      # keeps track of the owners that have been created
#   end
  
#   def self.all
#     @@owners              # keeps track of the owners that have been created
#   end

#   def self.reset_all

#   end


#   def species=(species)
#     if @species.is_a? String    #check if @species is already something
#       raise "species_error"     # if its already somthing then raise an error
#     end
#     @species = species
#   end

#   def species    #attr_reader
#     @species
#   end

#   def say_species
#     species_greeting = "I am a #{@species}."  #do I really need species_greeting?
#   end

  





# end