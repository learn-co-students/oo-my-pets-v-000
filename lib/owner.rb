require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :owner, :mood
  attr_reader :species
  attr_writer :name
  @@owner = [ ]

  def initialize(human)
    @@owner.push self # keep track of all our owners ever created #add owner "self" to the empty array owner
    @pets = {fishes: [], cats: [], dogs: []}
    @species = human
  end

  def self.all
        @@owner
   end

   def self.count
     self.all.count

   end

  def self.reset_all
    self.all.clear

  end

  def say_species
      "I am a #{@species}."
  end

   def name
        @name
   end

   def buy_fish(name) #no literelly buying a fish... we are just adding to the pet hash
      @pets[:fishes] << Fish.new(name) #line 11, Create a new fish
   end

   def buy_cat(name) #no literelly buying a Dog... we are just adding to the pet hash
      @pets[:cats] << Cat.new(name) #line 11, Create a new fish
   end

   def buy_dog(name) #no literelly buying a Dog... we are just adding to the pet hash
      @pets[:dogs] << Dog.new(name) #line 11, Create a new fish
   end

   def walk_dogs
    @pets[:dogs].each do |x| x.mood = "happy"
    end
   end

   def play_with_cats
    @pets[:cats].each do |x| x.mood = "happy"
    end
   end

   def feed_fish
    @pets[:fishes].each do |x| x.mood = "happy"
    end
   end

   def sell_pets
    # we iterate 2 levels deep tot change the mood. in the pets array
     #  always look for what it x in this case
     @pets.each do |species,anything|
      anything.each do |x|
      # @mood = "nervous" # make the instance of mood "nevrous" for all pets.
      x.mood = "nervous"
     end
     anything.clear #clear out all the pets
     end
   end

  def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end
end
