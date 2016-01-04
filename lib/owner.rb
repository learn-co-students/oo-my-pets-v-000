class Owner
  @@all=[]
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @species="human"
    @name=name
    @pets={:fishes => [], :dogs => [], :cats => []}
    self.all << self
  end

  def all
    @@all
  end

  def all=(var)
    @@all = var
  end

  def self.all
    @@all
  end

  def self.all=(var)
    @@all = var
  end

  def self.reset_all
    self.all = []
  end

  def self.count
    self.all.length
  end

  def say_species
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

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def sell_pets
    @pets.values.each {|type| type.each {|pet| pet.mood="nervous"} }
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_count = @pets[:fishes].size
    dog_count = @pets[:dogs].size
    cat_count = @pets[:cats].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end