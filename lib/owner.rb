class Owner
  # code goes here
  @@all=[]

  attr_accessor :pets, :name
  attr_reader :species

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @pets={fishes:[],cats:[],dogs:[]}
    @species=species
    @@all<<self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish=Fish.new(name)
    @pets[:fishes]<<fish
  end

  def buy_cat(name)
    cat=Cat.new(name)
    @pets[:cats]<<cat
  end

  def buy_dog(name)
    dog=Dog.new(name)
    @pets[:dogs]<<dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood='happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood='happy'
    end
  end

  def list_pets
    fish=@pets[:fishes].length
    cats=@pets[:cats].length
    dogs=@pets[:dogs].length
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def sell_pets
    @pets.each do |species,pet|
      @pets[species].each do |pet|
        pet.mood='nervous'
      end
      @pets[species].clear
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood='happy'
    end
  end
end
