require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []


  def initialize(name)
    # binding.pry
    @name = name
    @species = "human"
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@owners.size
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    # binding.pry
    @newfish = Fish.new(fish)
    @pets[:fishes] << @newfish
    @pets
  end

  def buy_cat(cat)
    @newcat = Cat.new(cat)
    @pets[:cats] << @newcat
    @pets
  end

  def buy_dog(dog)
    @newdog = Dog.new(dog)
    @pets[:dogs] << @newdog
    @pets
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    # binding.pry
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = {:dogs => [], :cats => [], :fishes => []}
  end@pets.collect {|animal, instance| icount = instance.count}


  def list_pets
    binding.pry

  #   icount = []
  #   animals = []
  #   @pets.collect do |animal, instance|
  #     icount << instance.count
  #     animals << animal.to_s
  #     icount << animals
  #     icount.each do |things|
  #       puts "I have #{things[0]} #{things[3]}, #{things[1]} #{things[4]}, and #{things[2]} #{things[5]}."
  #     end
  #   end
  end









end
