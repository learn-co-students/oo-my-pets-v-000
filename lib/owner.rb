class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end


  def self.all
    @@all
  end

  def self.reset_all()
    @@all.clear
  end

  def self.count()
    self.all.length
  end

  def say_species()
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def change_pets_mood(key,value)
    @pets[key].each do |animal|
        animal.mood = value
    end
  end

  def walk_dogs()
    self.change_pets_mood(:dogs,"happy")
  end

  def play_with_cats()
    self.change_pets_mood(:cats,"happy")
  end

  def feed_fish()
    self.change_pets_mood(:fishes,"happy")
  end

  def sell_pets()
    self.change_pets_mood(:dogs,"nervous")
    self.change_pets_mood(:cats,"nervous")
    self.change_pets_mood(:fishes,"nervous")
    @pets.clear
  end

  def list_pets()
    fishes = @pets[:fishes].size
    dogs = @pets[:dogs].size
    cats = @pets[:cats].size
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
