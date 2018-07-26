class Owner #HAS MANY PETS (class Fish, Dog, Cat = BELONGS TO the OWNER)

  attr_accessor :name, :pets #owner needs to get/set his/her name and his/her pets
  attr_reader :species #just need to read the species (the owner cannot 'write' or change the species)

  @@all = [] #class var to keep track of all owners

  def initialize(species)#initialize with a species
    @name = name #set local var to instance var
    @@all << self #shovel new instances of self (owner) into the @@all owner array
    @pets = {fishes: [], cats: [], dogs: []} #set instance var @pets to a hash for holding the pets
    @species = species #need to define an initialization method for species? need to be able to call toby = Cat.new("Cat") => toby.species => Cat
  end

#CLASS METHODS:
  def self.all #class method (writter of @@all array)
    @@all
  end

  def self.count #counts the owners in the @@all array
    @@all.count
  end

  def self.reset_all #clears the entire @@all owner array
    @@all.clear
  end

#INSTANCE METHODS: #call on particular instances, not whole class. so, one instance of owner.
  def say_species #do not need to pass in an argument bc you have initialized each instance with a name (@species)
    return "I am a #{@species}."
  end

  #I think these are the same as doing an add_fish method, no???
  def buy_fish(name) #from w/in this method i need to call the Fish Class!
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name) #pass in the cats name
    @pets[:cats] << Cat.new(name) #create new cat instance and assoc with the owner, push into their hash
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name) #collabe objects
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"} #iterate each value (dog) and within each dog object, select its attribute, mood, and set this to "happy"
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
      @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
    pets.each do |pets|
    pets.mood = "nervous" #key and value (dogs, "toby") return just the name array
    end
    end
    pets.clear
  end

  def list_pets #return list of all pets, iterate through the hash
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end





#bob = Owner.new("Bob")
#kim = Owner.new("Kim")
#todd = Cat.new("Todd")
#todd.owner = bob  #important to set this equal to bob and not "bob" bc you want the OBJECT BOB not the STRING Bob!!!!
# todd
