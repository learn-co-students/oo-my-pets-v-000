class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    self.pets[:dogs].each{|x| puts x.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|x| puts x.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|x| puts x.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pet| 
      pet.each {|n| n.mood = "nervous"}
    end
    self.pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    fish_count, dog_count, cat_count = 0
    self.pets.each {|type, pet|
      if type == :fishes
        fish_count = pet.count
      end
      if type == :dogs
        dog_count = pet.count
      end
      if type == :cats
        cat_count = pet.count
      end
    }
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end