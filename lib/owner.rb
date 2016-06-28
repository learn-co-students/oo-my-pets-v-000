require "pry"
class Owner

  # attr_writer :name
  attr_accessor :pets, :name
  attr_reader :species


  @@owners=[] #keeps track and is available to all instances of the class

  def initialize(species)
    @pets={
          :fishes => [],
          :dogs => [],
          :cats => []
     }
    @species = species
    @@owners << self
  end

  def self.all
    @@owners  #store every instance of owner into this array
  end

  def self.count
    @@owners.length # .length will return the correct count before and after clearing for every instance that is inside the owners
    #class and not every instance that has been created
  end

  def self.reset_all
    @@owners.clear #all constant instances will clear because constants are shared among all instances
  end

  def say_species
    "I am a #{species}."
  end

  #can buy a fish/cat/dog that is an instance of the Fish/Dog/Cat class
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog| #and whatever the  key is equal to it becomes
      #the value in this case the value is happy
      dog.mood != "happy"
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat| #and whatever the  key is equal to it becomes
      #the value in this case the value is happy
       cat.mood != "happy"
       cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish| #fish is the key
      #and whatever the  key is equal to it becomes the value in this case the value is happy
       fish.mood != "happy"
       fish.mood = "happy"
    end
  end

  def sell_pets
      @pets.each do |type, arrays|
         arrays.each do | pet_object |
           pet_object.mood = "nervous"
  # binding.pry
         end
      end
      @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
