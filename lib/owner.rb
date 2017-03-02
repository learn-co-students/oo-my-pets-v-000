class Owner
  # code goes here

  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish) if !fish.is_a?(Fish)
    @pets[:fishes] << fish
    fish.owner = self
  end

  def buy_cat(cat)
    cat = Cat.new(cat) if !cat.is_a?(Cat)
    @pets[:cats] << cat
    cat.owner = self
  end

  def buy_dog(dog)
    dog = Dog.new(dog) if !dog.is_a?(Dog)
    @pets[:dogs] << dog
    dog.owner = self
  end

  def walk_dogs
    @pets[:dogs].collect {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pets_type, value|
      value.each do |p|
        p.mood = "nervous"
      end
      @pets[pets_type] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

  end


end
