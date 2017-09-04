require 'pry'

class Owner
  attr_accessor :name, :owner, :fishes, :cats, :dogs, :pets
  @@all = []
  @@owner_count = 0
  @@fishes = 0
  @@cats = 0
  @@dogs = 0

  def initialize(name)
    @name = name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    # @owner = {@name=>:species, :pets=>@pets}
    @species = "human"
  end
  # keeps track of the owners that have been created
  #     can reset the owners that have been created
  #     can count how many owners have been created
  def self.all
    # binding.pry
    @@all.include?(self)
    # @@owner_count
  end

  def save
    @@all<<self
  end

  def create
        binding.pry
    owner = {@name=>species, @pets=>@pets}
    owner.save
    @@owner_count+=1

  end

  def self.reset_all
    # self.clear
  end

  def species=(species)
    if !name.nil?
        message = "Species has already been assigned."
        raise RuntimeError.new(message)
      else
        @species = species
      end
  end

  def say_species
    "I am a human."
  end

  # def self.name
  #   @name
  # end

  def pets
    pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def mood
    @mood
  end

  def buy_fish(pet_name)
    Fish.new(pet_name)
    # Fish.mood = "happy"
    @@fishes+=1
  end

  def buy_cat(pet_name)
    # self.buy_cat(pet_name)
  end

  def buy_dog(pet_name)
    # self.buy_dog(pet_name)
  end

  def walk_dogs
  end

  def play_with_cats
  end

  def feed_fish
    Fish.mood = "happy"
  end

  def sell_pets
  end

  def list_pets
  end


end
