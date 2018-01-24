class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a #{species}."
  end

  def buy_fish(fish)
    fish.class == Fish ? fish_instance = fish : fish_instance = Fish.new(fish)
    @pets[:fishes] << fish_instance
  end

  def buy_cat(cat)
    cat.class == Cat ? cat_instance = cat : cat_instance = Cat.new(cat)
    @pets[:cats] << cat_instance
  end

  def buy_dog(dog)
    dog.class == Dog ? dog_instance = dog : dog_instance = Dog.new(dog)
    @pets[:dogs] << dog_instance
  end

  def walk_dogs
    @pets[:dogs].each{|d| d.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].each{|c| c.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].each{|f| f.mood = 'happy'}
  end

  def sell_pets
    @pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
