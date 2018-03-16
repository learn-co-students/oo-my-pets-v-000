class Owner
  attr_accessor :pets
  attr_reader :species, :name

  @@all = []

  def initialize(species)
    @species = species
    @pets = {}
    ary = [:fishes, :dogs, :cats]
    ary.each{|a| @pets[a] = []}
    @@all << self
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

  def name=(name)
    @name = name
  end

  def pets
    @pets
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each{|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each{|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
