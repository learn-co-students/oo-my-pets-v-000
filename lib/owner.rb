class Owner
  @@all=[]
  attr_reader :species
  attr_accessor :name, :pets
  def self.all
    @@all
  end

  def initialize(species)
    @species=species
    @@all << self
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes]<<fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats]<<cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs]<<dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood="happy"
    end

  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish=@pets[:fishes].count
    dogs=@pets[:dogs].count
    cats=@pets[:cats].count
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end