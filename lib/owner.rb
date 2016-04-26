class Owner
  # code goes here

  attr_accessor :pets, :name
  attr_reader :species

  @@all=[]
  @@count=0


  def initialize(species)
    @pets={fishes:[], cats:[], dogs:[]}
    @species=species
    @@count+=1
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count=0
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def reset_all
    @@all.clear
  end

  def buy_fish(name)
    fish=Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat=Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog=Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood="nervous"}
    @pets[:cats].each {|cat| cat.mood="nervous"}
    @pets[:fishes].each {|fish| fish.mood="nervous"}
    @pets={fishes:[], cats:[], dogs:[]}
  end

  def list_pets
    dog_count=@pets[:dogs].length
    cat_count=@pets[:cats].length
    fish_count=@pets[:fishes].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
