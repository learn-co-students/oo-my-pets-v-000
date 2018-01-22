class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def pets=(pets)
    @pets = pets
  end

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

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def list_pets
    dog_mes = ""
    cat_mes = ""
    fish_mes = ""
    @pets.each do |pet_type, pets|
      if pet_type == :fishes
        count = pets.size
        fish_mes = count.to_s + " fish,"
      elsif pet_type == :dogs
        count = pets.size
        dog_mes = count.to_s + " dog(s), and"
      elsif pet_type == :cats
        count = pets.size
        cat_mes = count.to_s + " cat(s)."
      end
    end
    message = "I have #{fish_mes} #{dog_mes} #{cat_mes}"
  end
end
